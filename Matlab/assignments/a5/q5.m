%Q5...
clear all;
close all;
clc;

x0=linspace(1,3);
y0=linspace(0,3);
z0=linspace(0,1);

[A,B,C] = meshgrid(x0,y0,z0);

funky = A.^2 + B.^2 + C.^2 ;

trappy = trapz(z0,trapz(y0,trapz(x0,funky)));

fprintf('So the approx value is: %3.5f \n', trappy)