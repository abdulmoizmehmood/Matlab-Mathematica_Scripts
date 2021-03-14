%Q6...
clear all;
close all;
clc; 

funky = @(x,y) (x.^2 -10*x.*y - y.^2).^4;

intty = integral2(funky,0,1,0,1);

fprintf('So the approx value is: %3.5f \n', intty)