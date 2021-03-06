# Numerical methods for Partial Differential Equations with Python

_Gilbert François Duivesteijn_


## About

This repository is a collection of Jupyter Notebooks, containing methods for solving different types of PDEs, using Numpy and SciPy. Most notebooks take a special case of the general convection-diffusion equation

<img src="https://render.githubusercontent.com/render/math?math=%5Cfrac%7B%5Cpartial%20u%7D%7B%5Cpartial%20t%7D%20%2B%20U%20%5Ccdot%20%5Cnabla%20u%20%3D%20%5Ckappa%20%5Cnabla%5E2%20u%20%2B%20f">

and use a specific method to solve it using a most suitable numerical method. With time, more and more notebooks will be added. The goal is to have the written out formulas and code in par with each other, and make a direct translation between the mathematical notation and programming code.
|    |                               |
| ------------------------------------------------- | ----------------------------- |
| ![](./assets/poisson2D-1.jpg)                     | ![](./assets/poisson2D-2.jpg) |

_Figure 1: Example of numerical solution of a 2D Poisson PDE_ 


## Table of contents

### Finite difference

[1D heat equation, finite difference, SciPy integration](./notebook/1D%20heat%20equation%2C%20finite%20difference%2C%20SciPy%20integration.ipynb)

[1D heat equation, finite difference, direct method](./notebook/1D%20heat%20equation%2C%20finite%20difference%2C%20direct%20method.ipynb)

[1D heat equation, finite difference, forward Euler](./notebook/1D%20heat%20equation%2C%20finite%20difference%2C%20forward%20Euler.ipynb)

[1D heat equation, finite difference, Neumann BC](./notebook/1D%20heat%20equation%2C%20finite%20difference%2C%20Neumann%20BC.ipynb)

[1D heat equation, finite difference, p1 MIT 2016](./notebook/1D%20heat%20equation%2C%20finite%20difference%2C%20p1%20MIT%202016.ipynb)

[1D convection equation, finite difference, SciPy integration](./notebook/1D%20convection%20equation%2C%20finite%20difference%2C%20SciPy%20integration.ipynb)

[1D wave equation, finite difference, SciPy integration](./notebook/1D%20wave%20equation%2C%20finite%20difference%2C%20SciPy%20integration.ipynb)

[2D Poisson equation, finite difference](./notebook/2D%20Poisson%20equation%2C%20finite%20difference.ipynb)

[2D Poisson equation, finite difference, BC](./notebook/2D%20Poisson%20equation%2C%20finite%20difference%2C%20BC.ipynb)



### Finite volume

[1D Burgers' equation, finite volume, central scheme](./notebook/1D%20Burgers%27%20equation%2C%20finite%20volume%2C%20central%20scheme.ipynb)

[1D Burgers' equation, finite volume, upwind scheme](./notebook/1D%20Burgers%27%20equation%2C%20finite%20volume%2C%20upwind%20scheme.ipynb)

[1D Burgers' equation, finite volume, reconstructed upwind scheme](./notebook/1D%20Burgers%27%20equation%2C%20finite%20volume%2C%20reconstructed%20upwind%20scheme.ipynb)

[1D Burgers' equation, finite volume, Godunov scheme with limiter](./notebook/1D%20Burgers%27%20equation%2C%20finite%20volume%2C%20Godunov%20scheme%20with%20limiter.ipynb)



### 1D ODE

[Solving ODE with SciPy](./notebook/Solving%20ODE%20with%20SciPy.ipynb)



### Miscellaneous

[Euler's formula and Euler's Identity](./notebook/Euler%27s%20formula%20and%20Euler%27s%20Identity.ipynb)

[Taylor expansion](./notebook/Taylor%20expansion.ipynb)

[Truncation error analysis with Taylor expansions](./notebook/Truncation%20error%20analysis%20with%20Taylor%20expansions.ipynb)



### Matlab code

Some Matlab scripts for verification and validation of the Python implementations:

[1D Burgers' equation, finite volume, Godunov scheme with limiter](./matlab/1d_burgers_eq_finite_volume_godunov_scheme_with_limiter)

[2D Poisson equation](./matlab/2d_poisson_equation) Solution with Matlab PDE Toolkit

[2D Poisson equation BC](./matlab/2d_poisson_equation_bc) Solution with Matlab PDE Toolkit
