%Leapfrog integrator for 2 bodies 
% update position at integers and velocity at the half integers
clear;
time = 10;
steps = 1001;
dt = time/ (steps - 1);
vx(1) = 0;
vy(1) = 0;
x(1) = 1;
y(1) = 0;
ax(1) = 0;
ay(1) = 0;
t = [0, 4*pi];
for i = 1:steps -1
    t(i+1) = t(i) + dt;
    x(i+1) = x(i) + vx(i)*dt + ax(i)*dt*dt*0.5;
    %ax(i+1) = ;
    vx(i+1) = vx(i) + (ax(i) + ax(i+1))*0.5*dt;

    y(i+1) = y(i) + vy(i)*dt + ay(i)*dt*dt*0.5;
    %ay(i+1) = ;
    vy(i+1) = vy(i) + (ay(i) + ay(i+1))*0.5*dt;
end
figure(1)
plot(t,x);
figure(2)
plot(t,y);
figire(3)
plot(x,y);