clear variables
close all
clc

format long
f= @(x) x^3 - x^2 -1;

a=1.0;
b=2.0;

min_step = ;
c=f(a);
d=f(b);

if c*d > 0
    
    error('Talha you SUCK!')
end

[root,func_val,iterations]=bisect_funky(f,a,b,min_step)