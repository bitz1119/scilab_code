clc;
deff('y=f(x)','y=cos(x)-x*exp(x)');
deff('m=g(x)','m=-sin(x)-exp(x)*x-exp(x)');
x0 = 10.5;
a = 0;
e = 0.00001;
i = 0;
printf('iteration\ta\tx0\tf(z)\n')
while(abs(x0-a)>e)
    a = x0;
    x0=x0-(f(x0)/g(x0));
        printf('%d\t%f\t%f\t%f\n',i,a,x0,f(x0));
        i = i+1;
end;
printf('the solution of this equation after %d iteration is %f',i,x0);
    
        
