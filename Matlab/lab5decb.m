clear all; close all, clc
A =[7 3 -1 2; 3 8 1 -4; -1 1 4 -1;2 -4 -1 6];
B =[-1;0;-3;1];
m= linsolve(A,B)

syms a b c d;

e1= 7*a +3*b -c + 2*d == -1;
e2= 3*a + 8*b + 1*c + -4*d == 0;
e3= -1*a + 1*b + 1*c + -1*d == -3; 
e4= 2*a + -4*b + 4*c + 6*d == 1;

sol= solve([e1,e2,e3,e4],[a, b, c, d]);

sol.a
sol.b
sol.c
sol.d