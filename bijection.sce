clc;
function y = func(x)
    y = x*x*x-x-11;
endfunction
x1 = 2;x2 = 3;c = 0.00001;
printf('iteration\tx1\tx2\tz=(x1+x2)/2\tf(z)\n')
i = 1;
while abs(x1-x2) >c
    z = (x1+x2)/2;
    printf('%d\t%f\t%f\t%f\t%f\n',i,x1,x2,z,func(z));
    if(func(z)*func(x1)>0)
        x1 = z;
    else
        x2 = z;
    end
    i = i+1;
end
printf('the solution of this equation after %d iteration is %f',i,z);
