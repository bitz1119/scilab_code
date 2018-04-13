clc;
disp('enter the multiple of pi');
n = input('');
function y = u(t)
    for i = 1:n
        y(find(t>=0 + ((i-1)*2*3.14) & (t<3.14 + (i-1)*2*3.14)) = 1;
        y(find(t>=3.14 + ((i-1)*2*3.14)) & (t<2*3.14 + ((i-1)*2*3.14))) = 1;
    end
endfunction
t = (0:0.01:n*2*3.14);
y = u(t);
plot(t,y,'g.');
xtitle('Graph of square wave function','t','u(t)');