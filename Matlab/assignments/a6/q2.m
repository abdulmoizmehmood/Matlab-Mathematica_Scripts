%Q2...                          ///function files are funky2.m and eulery.m
clear all;
close all;
clc

t0=0;
tf=1;
n=100;
y0=-1;

y = eulery(n,t0,tf,y0);

fprintf('So the solution is approxmately: %3.4f correct to 4 decimal places',y(n+1))
