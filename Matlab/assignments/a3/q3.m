%Q,3
clear all;
clc


func= @(x) -6*x^5 +15*x^4 -30*x^2 +10*x^3 +5;
derfunc=@(x) - 30*x^4 + 60*x^3 + 30*x^2 - 60*x;
a = 0.6;
b = a - (func(a)/derfunc(a));
i = 1;

if func(a) == 0
    b = 0;
else
    while abs(func(b)) > 10^-6   %la loopa loop
        a = b;
        b = a - (func(a)/derfunc(a));
        i = i +1;
    end
end
fprintf('The root = %.4f \n',b)