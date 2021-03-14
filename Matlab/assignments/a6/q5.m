%Q5...                          ///function file is funky5.m
clear all;
close all;
clc



xi=0;
xf=1;
xs=[xi xf];
 
% %initial conditions
ic=[1; -2; -4];

% %making a call
[x,y] = ode45(@funky5,xs,ic);

% plotting the solution
plot(x,y(:,1),'r -o',x,y(:,2),'g -o',x,y(:,3),'b -o')
title('Solution 3RD ORDER DE using ODE45');
xlabel('X');
ylabel('Solution Y');
legend('Y','Yp','Y"')
set(legend,...
    'Position',[0.2 0.2 0.1 0.1]);