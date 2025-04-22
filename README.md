# Newton-Raphson Iteration
This is MATLAB code for a Newton-Raphson Iteration to estimate the Eccentric Anomaly of an orbit.

## Changeable
Plug in different values for the following:
- Semi-major Axis - (a)
- Eccentricity - (e)
- Time at Periapsis - (t<sub>p</sub>)
- Time for calculation - (t)
- Gravitational parameter - ($\mu$)
- Tolerance for the iteration

## Output
- Number of iteration
- True Anomaly at Iteration ($\theta$)
- Eccentric Anomaly at Iteration (E)

This will continue until convergence.

## Example
### Using the example values:
- Semi-major axis, a = 10000 km
- Eccentricity, e = 0.9
- Time at Periapsis, t<sub>p</sub> = 4200 sec
- Time for calculation, t = 12000 sec
- Gravitational parameter, $\mu$ = 398600 $\frac{m^3}{s^2}$
- Tolerance for the iteration = 10<sup>-4</sup>

### The output from the algorith will look like this:
![image](https://github.com/user-attachments/assets/7a162fb8-b89e-46c8-994c-c6982cd5b55b)

The output is in radians.
