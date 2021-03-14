%%%Q.5
clear variables
close all
clc

mefunky= @(x) tan(x) + tanh(x); % ze function

x_lower=0;
x_upper=2*pi;
x_mid= (x_lower + x_upper)/2;
chakarum=0;

if mefunky(x_lower)*mefunky(x_upper) > 0 %chk if root exists in the interval
    error ('Interval Error, The world will end now because of your stupidity!')
else
while abs(mefunky(x_mid)) > 10^-3 %le me bisecting
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

result = ['The required value is found to be, x = ',num2str(x_mid)];
disp(result)