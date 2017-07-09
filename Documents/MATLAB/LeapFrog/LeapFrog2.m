%Leapfrog integrator for 2 bodies 
% update position at integers and velocity at the half integers
% x1 is mass 1 and x2 is mass 2
function z = LeapFrog2(t, x0, v0)
n = 1000;
t = linspace(0, 10, n);
dt = t(1)/n;
%v(0)=v(1/2)
%mass 1
%x1(0) = [0, 0];
%v at 0 = [0,0]
%v1(0) = [0, 0];
% mass 2
%x2(0) = [1, 0];
%v at 0 = [1,1]
%v2 = [1, 1]; 
% r1 and r2 are the vectors x1 and x2
r3 = ((x1-x2)^2 + (y2-y1)^2)^(3/2);

    for i = 1:steps -1
        v1(i+1) = - ((r1-r2)*dt)/r3 + v1(i);
        r1(i+1) = r1(i) + v1(i+1)*dt;

        v2(i+1) = - ((r2-r1)*dt)/r3 + v2(i);
        r2(i+1) = r2(i) + v2(i+1)*dt;
    end
end
