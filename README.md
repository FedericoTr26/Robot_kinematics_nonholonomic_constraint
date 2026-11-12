# Robot Kinematics, Actuation and Nonholonomic Constraints

A Field and Service Robotics project on robot mobility, actuation, and velocity constraints. The analysis covers the ATLAS humanoid, spatial mechanisms, wheeled and aerial robots, and a Raibert hopper model.

## Approach

- The analysis compares ATLAS actuation in ground contact and in flight, and assesses actuation in wheeled robots, manipulators, and a coplanar hexarotor.
- Grübler's formula was used to count degrees of freedom in spatial mechanisms. The analysis also examined the effect of dependent constraints.
- The analysis computes annihilators and tests involutivity for three distributions. It also establishes the integrability of constant Pfaffian constraints.
- The symbolic MATLAB analysis computes admissible velocity directions for the Raibert hopper, evaluates their Lie bracket, and checks the accessibility rank.

## Results

- The three-chain surgical manipulator has three degrees of freedom.
- In the Raibert hopper model, two admissible velocity directions and their Lie bracket span the three-dimensional configuration space when the mass, inertia, and effective leg length are positive. The resulting rank is 3, which establishes complete nonholonomy in this model.

## Run the MATLAB analysis

Requires MATLAB and Symbolic Math Toolbox. Tested with MATLAB R2026a.

From the repository root in MATLAB, run:

```matlab
run('Task 6/raibert_hopper_nonholonomy.m')
```

The script prints the null-space basis, accessibility matrix, determinant, and rank. It also computes the Lie bracket.

## Project files

- [Technical report](robot-kinematics-actuation-and-nonholonomic-constraints.pdf) contains the theoretical analyses for Tasks 1–5 and the hopper derivation for Task 6.
- [Task 6 MATLAB script](Task%206/raibert_hopper_nonholonomy.m) reproduces the symbolic rank calculation.

**Notation for Task 6.** In the script and the Lie-bracket calculation on page 15, the third configuration coordinate is the leg length `l`. The inertia `I` is a parameter. The coordinate vector and its description on that page label the third coordinate as `I`.
