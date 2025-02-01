%% Sunay Neelimathara
% Newton-Raphson Iteration - 2025

clc;
clear;

% Changeable givens - plug in the values
a=10000; % Insert your semi-major axis of your orbit here
e=0.9; % Insert the eccentricity of your orbit here
tp=4200; % Insert the time at periapsis here
t=12000; % Insert your time for calculation here
mu=3.986e5; % Insert your gravitational parameter here 
tolerance=1e-4; % Set your tolerance for the iterations

%% Equations
n=sqrt(mu/a^3); % Equation for mean motion
M=n*(t-tp); % Equation for mean anomaly

%% Iteration
E=M; % Set the initial guess for eccentric anomaly to be the mean anomaly
for i=1:100
    f=E-e*sin(E)-M;
    f_p=1-e*cos(E);
    E_temp=E-f/f_p;
    fprintf("<strong>Iteration # </strong>");
    disp(i);
    fprintf("True Anomaly: ");
    theta_f = 2*atan(sqrt((1+e)/(1-e))*tan(E_temp/2));
    disp(theta_f);
    fprintf("Eccentric Anomaly: ");
    disp(E_temp);
    if abs(E_temp-E) < tolerance
        break;
    end
    E=E_temp;
    fprintf("------------------------------\n\n");
end