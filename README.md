# MATLAB Numerical Methods Collection

This repository contains a comprehensive set of MATLAB scripts for solving various numerical methods problems, organized by topic. It is designed for students, educators, and practitioners who want to learn, teach, or apply numerical methods using MATLAB.

## Table of Contents
- [Overview](#overview)
- [Directory Structure](#directory-structure)
- [Getting Started](#getting-started)
- [Methods Implemented](#methods-implemented)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Overview
This collection covers fundamental numerical methods, including root-finding algorithms, solutions to linear systems, and series expansions. Each method is implemented in a clear, well-commented MATLAB script, often with user input prompts and graphical output for visualization.

## Directory Structure
```
1_RootFindingMETHODS/         # Root-finding algorithms (Bisection, Newton-Raphson, Secant, etc.)
2_MATRIX_linearSystem/        # Linear system solvers (Direct and Iterative methods)
  ├── DirectMETHOD/           # Direct methods (Gauss Elimination, Gauss-Jordan, Matrix Inversion)
  └── IterativeMETHOD/        # Iterative methods (Gauss-Seidel, Jacobi, Power Method)
3_SeriesMETHODS/              # Series expansions (Fibonacci, Arithmetic, Geometric, Taylor Series)
Basic_Calc.m                  # Example: Personal budget calculation
Basic_Intro.m                 # MATLAB basics and comments introduction
startup.m                     # MATLAB startup script (customizes environment)
```

## Getting Started
1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd <repo-directory>
   ```
2. **Open MATLAB** and set the current folder to the repository directory.
3. **Run any script** by opening it in MATLAB and pressing `Run`, or by typing its name in the command window.

## Methods Implemented
### 1. Root-Finding Methods (`1_RootFindingMETHODS/`)
- **Bisection Method:** Interactive script for finding roots using the bisection algorithm, with plotting of function and root approximations.
- **Newton-Raphson Method:** Root-finding using tangent lines, requires function and its derivative.
- **Secant Method:** Root-finding using secant lines, requires two initial guesses.
- **Regula Falsi & Newton Modified:** Additional root-finding techniques.

### 2. Linear System Solvers (`2_MATRIX_linearSystem/`)
- **Direct Methods:**
  - *Gauss Elimination*: Step-by-step elimination and back-substitution.
  - *Gauss-Jordan*: Full reduction to row-echelon form.
  - *Matrix Inversion*: Solves systems using matrix inversion.
- **Iterative Methods:**
  - *Gauss-Seidel*: Iterative solution with error tracking.
  - *Jacobi*: Classic iterative solver.
  - *Power Method*: Finds dominant eigenvalue and eigenvector.

### 3. Series Methods (`3_SeriesMETHODS/`)
- **Fibonacci, Arithmetic, Geometric Series:** Scripts to generate and sum series.
- **Taylor Series:** Approximate functions (e.g., e^x) with error analysis and plotting.

### 4. Other Scripts
- **Basic_Calc.m:** Example of using MATLAB for a personal budget.
- **Basic_Intro.m:** Introduction to MATLAB syntax, comments, and cell mode.
- **startup.m:** Customizes MATLAB environment (paths, figure settings).

## Usage
- Scripts are interactive and will prompt for user input (e.g., function definitions, matrix entries, tolerances).
- Many scripts include plotting for visualization of results.
- To run a script, simply type its name (without `.m`) in the MATLAB command window.

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your improvements or new methods.

## License
This project is open source and available under the [MIT License](LICENSE).