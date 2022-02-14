clear all;
clc;
close all;

%% Initialize a two component PDE model.
model = createpde();

%% Computational domain, defined by polygon.

gd = [2; 6
    1; 1; 2; 2; 0; 0
    1; 0; 0; 2; 2; 1
];

[dl, bt] = decsg(gd);

% Plot the computational domain.
figure(1);
pdegplot(dl, 'EdgeLabels', 'on', 'FaceLabels', 'on')
axis equal

%% Attach the computational domain to the PDE model.

geometryFromEdges(model, dl);

%% Specify the kind of model from the generic formula.

specifyCoefficients(model,  ...
    'm', 0,                 ...
    'd', 1,                 ...
    'c', 0.05,              ...
    'a', 0,                 ...
    'f', 0                  ...
);

%% Boundary conditions

applyBoundaryCondition(model,           ...
    'neumann', 'edge', [2, 3, 4, 5],    ...
    'g', 0,                             ...
    'q', 0                              ...
);

applyBoundaryCondition(model,           ...
    'dirichlet', 'edge', [1, 6],        ...
    'u', 0);

%% Initial conditions.

setInitialConditions(model, @fn_u0);

%% Generate mesh.
generateMesh(model, 'Hmax', 0.1);

figure(2)
pdeplot(model)
axis equal

%% Time domain

t = 0:0.01:10;

%% Solve the PDE
result = solvepde(model, t);

u = result.NodalSolution;

%% Visualize the solution

fig = figure(3);
vidObj = VideoWriter('pdetoolbox_example.mp4', 'MPEG-4');
open(vidObj);
for i=1:length(t)
    pdeplot(model, 'XYData', u(:, i), 'ZData', u(:,i), 'FaceAlpha', 0.5, 'ColorMap', 'default', 'Mesh', 'on')
    title("Molecular diffusion");
    xlabel("x");
    ylabel("y");
    zlabel("u(x,y,t)");
    zlim([0, 1]);
    drawnow limitrate;
    F(i)=getframe(fig);     
    writeVideo(vidObj, F(i));
end
close(vidObj);
