clc
close all
clear all
clear variables
%defining the fuction
f=@(x) -6*x^5 +15*x^4 -30*x^2 +10*x^3 +5;
%derivative of the function
f_der=diff(f,x);
%the initial guess
x_0 = 0.7;
%tolerance allowed
min_err=10^-8;
%calling function to calculate root
[x_root,iterations_vec,rel_err_vec]= asad(f,f_der,x_0,min_err);
%printing
formatspec='the calculated root is %3.7f \n \n';
fprintf(formatspec,x_root)