%q2 main euler function file
%function input form f=f(stepno.-n,t0,t-final,y0)
function y=eulery(n,t0,t1,y0)
h=(t1-t0)/n;
t(1)=t0;
y(1)=y0;
for i=1:n
t(i+1)=t(i)+h;
y(i+1)=y(i)+h*funky2(t(i),y(i));
end;
