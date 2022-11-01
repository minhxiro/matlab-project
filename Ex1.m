%% Ex2
% Determine the input
d = input('Enter the distance: ');
g = 9.8;
theta = pi / 4;

% Calculation to find the initial velocity
v0 = sqrt((d * g) / sin(2 * theta) );

% Convert m/s into km/h
fprintf('The initial velocity is: %1.3f', v0);