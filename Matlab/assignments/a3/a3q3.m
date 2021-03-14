%Q,3
clear variables;clear all;close all;
clc

% plotting mefuncky for the interval (0,1) we take x1 == 0.5
% x=linspace(0,1,100);
% y = 15*x.^4 -30*x.^2 +5 -6*x.^5 +10*x.^3; plot(x,y)

syms mefunky(x) medunky(x)

mefunky(x) = 15*x^4 -30*x^2 +5 -6*x^5 +10*x^3; % ze fancy symbolic function
medunky(x)=diff(mefunky(x),x); %differentiating the ftn.
x1 = 0.5;
accuracy=10^-9;
x2 = x1 - (mefunky(x1)/medunky(x1));
chakarum = 1;

if mefunky(x1) == 0
    x2 = 0;
else
    while abs(mefunky(x2)) > accuracy   %la loopa loop
        x1 = x2;
        x2 = x1 - (mefunky(x1)/medunky(x1));
        chakarum = chakarum +1;
    end
end
fprintf('The root is found to be at, x = %.4f & y = %.4f after %i iteration(s), where accuracy = %.2e \n',x2,mefunky(x2),chakarum,accuracy)