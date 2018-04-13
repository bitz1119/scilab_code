clc;
function y = u(t)
    y(find (t<0)) = 0;
    y(find (t>=0)) = 1;
endfunction

t = (-6 : 0.01 : 6);
y = u(t)
plot(t, y, 'g.');
xtitle('Graph of unit step function','t','u(t)');
