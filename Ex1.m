%% week 2 
% Determine the input
d = 183; %distance of the narrowest point of the grand canyon
g = 9.8; % gravity
theta = pi / 4; % the angle of launch

% Calculation to find the initial velocity
v0 = sqrt((d * g) / sin(2 * theta) );

% Convert m/s into km/h
new_v0= v0*3.6;
fprintf('The initial velocity is: %1.2f in km/h', new_v0);

