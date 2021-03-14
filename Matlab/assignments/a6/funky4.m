function dxdt = funky4(t,x)

dxdt = [x(2); -(x(1)^2 - 1)*x(2) - x(1)];