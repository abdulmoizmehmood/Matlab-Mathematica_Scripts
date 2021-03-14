clc;
clear all;
close all;

xi=0; xf= 5; xs=[xi,xf];

ic=[0,1];

[X,Y]=ode45(@func_4, xs, ic);

y = Y(:,1);
yp = Y(:,2);

plot(X,y,'b -o',X,yp,'r -o')