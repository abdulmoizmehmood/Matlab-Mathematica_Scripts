%function file
function[x_root,iterations_vec,rel_err_vec] = asad(f,f_der,x_0,min_err)
x_old=x_0;
rel_err=1;
iterations=0;
counter=1;
while rel_err > min_err
    f_x_old = double(subs(f,x_old));
    f_der_x_old = double(subs(f_der,x_old));
    x_new = x_old-f_x_old/f_der_x_old;
    rel_err = abs((x_new-x_old)/x_old);
    x_old = x_new;
    iterations_vec(counter) = iterations;
    rel_err_vec(counter) = rel_err;
    counter = counter+1;
    iterations = iterations+1;
end
x_root=x_new;