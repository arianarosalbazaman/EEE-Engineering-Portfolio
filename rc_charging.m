
clc;
clear;
close all;

% RC Circuit Charging Simulation

% 1. Define circuit parameters
R = 1000;       % Resistance in ohms
C = 100e-6;     % Capacitance in farads
Vs = 5;         % Supply voltage in volts

% 2. Calculate time constant
tau = R * C;

% 3. Create time values
t = linspace(0, 5*tau, 500);

% 4. Calculate capacitor voltage
Vc = Vs * (1 - exp(-t/tau));

% 5. Plot the charging curve
figure;
plot(t, Vc, 'LineWidth', 2);

grid on;
xlabel('Time (seconds)');
ylabel('Capacitor Voltage (V)');
title('RC Circuit Capacitor Charging');

% 6. Display time constant
fprintf('Time constant = %.3f seconds\n', tau);

% 7. Save graph as an image
exportgraphics(gcf, 'rc_charging.png', ...
    'Resolution', 300);
