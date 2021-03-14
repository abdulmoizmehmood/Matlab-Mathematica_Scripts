close all, clear all, clc;
% safai nisf imaan hai %

syms x
steps=5;
rows=steps+1;
n=1000;
xmin=-20;
xmax=20;
x=linspace(xmin,xmax,n);
figure;
f=0;
m=0;
h=5;

for i = 0:steps
    f=f+1;
    subplot(rows,2,f)
    plot(x,hermiteH(i*h,x).*exp(-(x.^2)/2))
    title(['\it{\psi_{' num2str(i*h) '}}'])
    f=f+1;
    subplot(rows,2,f)
    plot(x,abs(hermiteH(i*h,x).*exp(-(x.^2)/2)).^2)
    title(['\it{||\psi_{' num2str(i*h) '}}||^2'])
end