clear variables;
clc

f = @(x) exp(x) - 3*x.^2 ;

a = 0;
b = -10;
c = b - ((a-b)/(f(a)-f(b)))*f(b);
i = 1; 
if abs(f(b)- f(a)) <= 10^-8 
    error ('error overflow')
elseif f(a) == 0;
    c=a;
elseif f(b) == 0;
    c=b;
else
while abs(f(c)) > 10^-8 
    
 c = b - ((a-b)/(f(a)-f(b)))*f(b);
    i= i +1;
    a=b;
    b=c;
end
end
 
fprintf('The root = %.4f \n',b)