%Q4...
clear all;
close all;
clc; 

funky = @(x) (1./(1-x.^2).^0.5);

intty = integral(funky,-1,1);

fprintf('So the approx value is: %3.5f \n', intty)
