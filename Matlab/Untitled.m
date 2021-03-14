clc
clear all
close all
clear variables

syms x

f=symfun(x.^3,x)
f_der=diff(f,x)
fplot(f,'b--')
% grid on
% xlabel('$$x$$','interpreter','Latex')
% ylabel('$$(x)$$','interpreter','Latex')
% title(['plot of the function ','$$x.^3-x-1$$'],'interpreter','Latex')
x_0=1;
min_err=10^-8;
[x_root]=new_raph_fun(f,f_der,x_0,min_err);
formatspec='the calcualated root is %3.7f\n';
fprintf(formatspec,x_root)
% figure
% plot(iteratios_vec,rel_err_vec,'r')
% xlabel('f')
% ylabel('tc')
% title('plot')
