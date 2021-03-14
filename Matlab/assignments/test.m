close all
clear all
clear variables
clc
asad = @(x) exp(x) - 3*x.^2 ;
x1 = -1;
x2 = -1;
x3 = x2 - ((x1-x2)/(asad(x1)-asad(x2)))*asad(x2); %this is secant method formula
iterations = 1; 
if abs(asad(x2)- asad(x1)) <= 10^-8
    error ('Ye tau mein nahi btawuga Struggle Karna parygi. Youtube pe jayein daily motion pe jayein, tune.pk pe jayein ha ha ha')
else
while abs(asad(x3)) > 10^-6  %la loopa loop
 x3 = x2 - ((x1-x2)/(asad(x1)-asad(x2)))*asad(x2);
    iterations= iterations +1;
    x1=x2;
    x2=x3;
end
end
 result = ['root is, x = ',num2str(x3)];
disp(result)
