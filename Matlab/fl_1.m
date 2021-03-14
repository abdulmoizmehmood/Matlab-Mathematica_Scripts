clc;clear all; clear variables;

num = input('input number: ');

disp('')

x= rand(num,1);
y= rand(num,1);

r= sqrt(x.^2 +y.^2);

inny=find(r<=1);
outy=find(r>1);

ix=x(inny);
iy=y(inny);
ox=x(outy);
oy=y(outy);

ninny = length(inny);

pi2pi= 4*(ninny/num)

plot(ix,iy,'g .')
hold on
plot(ox,oy,'y .')
hold off
axis square