%%%Q.2
clear variables
close all
clc

mefunky= @(x) exp(-x)-x; % ze function

x_range = [0 1]; % initial interval
options = optimset('Display','off'); %iterations, n
[x fval exitflag output] = fzero(mefunky,x_range,options);

n = output.iterations;

%le me giving answer

result = ['Using fzero ftn. the root is found to be at, x = ',num2str(x),... 
    ' & y = ',num2str(mefunky(x)),' after, n = ',num2str(n),' iteration(s)'];
disp(result)

