%%%Q.4A
clear variables
close all
clc

funk_2= @(x) x.^2;
funk_1= @(x) x.^3 - 2*x +1;


mefunky= @(x) funk_1(x) - funk_2(x); % ze function

%The reason this works, is that you are looking for pairs (x,y) 
%that satisfy both equations simultaneously, so to ensure the y-coordinates
%are the same,implies that funk_1(x)=funk_2(x) = mefunky(x). Hence their 
%difference should == 0 for a certain value of x, hence root of mefunky(x)

x_lower=0;
x_upper=1;
x_mid= (x_lower + x_upper)/2;
chakarum=0;

if mefunky(x_lower)*mefunky(x_upper) > 0 %chk if root exists in the interval
    error ('Interval Error, The world will end now because of your stupidity!')
else
while abs(mefunky(x_mid))> 10^-6   %le me bisecting
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

result = ['The intersection is found to be at, x = ',num2str(x_mid),... 
    ' & y = ',num2str(funk_1(x_mid)),' after, n= ',num2str(chakarum),' iteration(s)'];
disp(result)