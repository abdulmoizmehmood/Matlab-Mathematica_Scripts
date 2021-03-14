%Q4...                          ///function file is funky4.m
clear all;
close all;
clc

ti=0;
tf=20;
ts=[ti tf];
 
% %initial conditions
ic=[0; 0.25];

% %making a call
[t,x] = ode45(@funky4,ts,ic);

% plotting the solution
plot(t,x(:,1),'r -o',t,x(:,2),'g -o')
title('Solution of van der Pol Equation using ODE45');
xlabel('Time - T');
ylabel('Solution - X');
legend('x','xp')