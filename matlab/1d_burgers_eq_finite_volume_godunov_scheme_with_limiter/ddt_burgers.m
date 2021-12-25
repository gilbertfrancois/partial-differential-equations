function [ dudt ] = ddt_burgers( t, u )
    n = length(u);
    dx = 1. / n;
    u_i_minus_one = [0; u(1:end-1)];
    u_i_plus_one = [u(2:end); 0];
    u_i_plus_two = [u_i_plus_one(2:end); 0];

    % reconstruct u_i_plus_half_left

    r = (u_i_plus_one - u) ./ (u - u_i_minus_one);
    phi = limitor(r);
    u_i_plus_half_left = u + 0.5 * (u - u_i_minus_one).*phi;
    
    % reconstruct u_i_plus_half_right
    u_i_plus_two = [u_i_plus_one(2:end); 0];
    r = (u - u_i_plus_one) ./ (u_i_plus_one - u_i_plus_two);
    phi = limitor(r);
    u_i_plus_half_right = u_i_plus_one + 0.5 * (u_i_plus_one - u_i_plus_two).*phi;
    f = Godunov(u_i_plus_half_left, u_i_plus_half_right);

    % apply Godunov
    f = [0; f];

    dudt = (f(1:end-1) - f(2:end)) ./dx;
end

function phi = limitor(r)
    phi = 2*r ./ (1 + r);
    phi(r <= 0) = 0;
    phi(~isfinite(r)) = 0;
end