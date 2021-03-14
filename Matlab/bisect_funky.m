function [root,func_val,iterations]=bisect_funky(f,a,b,min_step)

c=evalin('base','c');

iterations = 0;

step_size = abs(a-b)/2;
x= (a+b)/2;

formatspec = 'iteration: %3.0f , root: %8.6f, function value: %12.9f \n\n';

while step_size > min_step
    
    y=f(x);
    
    if y==0
        
        root =0;
        
        break
        
    end
    
    if c*y < 0
        
        b=x;
        
    else
        a=x;
    end
    
    x= (a+b)/2;
    
    step_size = abs(a-b)/2;
    
    iterations =iterations +1;
    
    fprintf(formatspec,iterations,x,y)
    
end

root = x;

func_val=f(root);