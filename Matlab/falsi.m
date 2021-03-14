clear variables
close all
clc

format long
f= @(x)exp(x)-3*x

a=1.0;
b=2.0;

min_step = 10^-8;
c=f(a);
d=f(b);

if c*d > 0
    
    error('DIE!')
end

[root,func_val,iterations]=falsi_funky(f,a,b,min_step)