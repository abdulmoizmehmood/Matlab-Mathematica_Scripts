%%%Q.1
clear variables
close all
clc

mefunky= @(x) exp(x) - 3*x^2; % ze function

x_lower=0;
x_upper=1;
x_mid= (x_lower + x_upper)/2;
chakarum=0;

if mefunky(x_lower)*mefunky(x_upper) > 0 %chk if root exists in the interval
    error ('Interval Error, The world will end now because of your stupidity!')
else
while abs(mefunky(x_mid))> 10^-6   %le me bisecting
     if mefunky(x_mid)== 0.0
    root=0;
    break
     end 
    if (mefunky(x_mid)*mefunky(x_lower)) < 0
        x_upper=x_mid;
    else
        x_lower=x_mid;
    end
    x_mid = (x_lower + x_upper)/2;
    chakarum= chakarum +1;
end
end

%le me giving answer

result = ['The root is found to be at, x = ',num2str(x_mid),... 
    ' & y = ',num2str(mefunky(x_mid)),' after, n= ',num2str(chakarum),' iteration(s)'];
disp(result)