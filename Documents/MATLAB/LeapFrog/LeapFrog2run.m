%test code for running the leapfrog2 function
% x0 = [x1, y1, x2, y2]
x0 = [0, 0, 1, 0];
% v0 = [vx1, vy1, vx2, vy2]
% v(0) = [0, 0, 1, 1]
% v0 is actually calculated v at 1/2 timestep 
v0 = [0.0025, 0, 0.9975, 1];

LeapFrog2(t, x0, v0)