function[x_root]=new_raph_fun(f,f_der,x_0,min_err)
x_old=x_0;
rel_err=0.1;
iterations=0;
counter=1;
while abs(subs(f,x_old))>min_err
    f_x_old=double(subs(f,x_old));
    f_der_x_old=double(subs(f_der,x_old));
    x_new=x_old-(f_x_old/f_der_x_old);
    rel_err=abs((x_new-x_old)/x_old);
    x_old=x_new;
end
x_root=x_new;
    