clc;
clear all;
close all;

xs = [0 1.5];
ic = 1;
[x,y] = ode45(@(x,y) (x.^2 + exp(3*x.^4 - 2))/(y.^2), xs, ic);

plot(x,y,'r -o')

size(y)