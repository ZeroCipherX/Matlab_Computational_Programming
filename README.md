# MATLAB Numerical Methods Collection

This repository contains a collection of MATLAB scripts and functions for solving various numerical methods problems, including root-finding, linear systems, and series computations. It is organized for educational purposes and can be used as a reference or starting point for students and practitioners.

## Project Structure

- **Basic_Intro.m**: Introduction to MATLAB basics, comments, and cell usage.
- **Basic_Calc.m**: Example script for simple calculations and budgeting in MATLAB.
- **startup.m**: MATLAB startup script for environment setup (paths, display, etc.).

### 1. Root Finding Methods (`1_RootFindingMETHODS/`)
Scripts for finding roots of equations:
- `Bisection.m`: Bisection method for root finding.
- `NewtonModified.m`: Modified Newton-Raphson method.
- `NewtonRaphson.m`: Standard Newton-Raphson method.
- `Regula.m`: Regula Falsi (False Position) method.
- `Secant.m`: Secant method.

### 2. Matrix Linear System Solvers (`2_MATRIX_linearSystem/`)
#### Direct Methods (`DirectMETHOD/`):
- `Gauss_Elimination.m`: Gaussian elimination.
- `Gauss_JordanCode.m`: Gauss-Jordan elimination.
- `Matrix_InversionCode.m`: Matrix inversion method.

#### Iterative Methods (`IterativeMETHOD/`):
- `Gauss_Seidel_ITERATIVE.m`: Gauss-Seidel method.
- `Jacobi_ITERATIVE.m`: Jacobi method.
- `Power_Method.m`: Power method for eigenvalues.

### 3. Series Methods (`3_SeriesMETHODS/`)
#### Fibonacci, Arithmetic, and Geometric Series (`FIBO_ARITH_GEOMET/`):
- `Arithematic.m`: Arithmetic series calculations.
- `Fibonacci.m`: Fibonacci sequence calculations.
- `Geometric.m`: Geometric series calculations.

#### Taylor Series (`TaylorSeries/`):
- `GenFunc.m`: General Taylor series expansion.
- `e^x.m`: Taylor series for the exponential function.

## Getting Started

1. **Clone the repository** and open it in MATLAB.
2. (Optional) Run `startup.m` to set up the MATLAB environment.
3. Explore the scripts in each folder. Each script is self-contained and prompts for user input where necessary.
4. For root-finding and matrix methods, follow the on-screen prompts to enter functions, bounds, tolerances, or matrices as required.

## Requirements
- MATLAB (any recent version should work)

## Usage Example
To use the Bisection method:
1. Open `1_RootFindingMETHODS/Bisection.m` in MATLAB.
2. Run the script. Enter the function, interval, tolerance, and maximum iterations as prompted.
3. The script will display the iterative process and plot the function with root approximations.

## License
This project is for educational purposes. Feel free to use and modify the code as needed.

---
*Happy coding and learning MATLAB numerical methods!*