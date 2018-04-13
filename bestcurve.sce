clc;
n = input('enter the number of operations : ');
disp('enter the values of x : ');
for i=1:n
    x(i) = input('');
end
disp('enter the values y: ');
for i=1:n
    y(i) = input('')
end
sumx= 0;
sumy = 0;
sum_x2 = 0;
sumxy = 0;
for i = 1:n
    sumx = sumx+x(i);
    sumy = sumy+y(i);
    sum_x2 = sum_x2+x(i)*x(i);
    sumxy = sumxy+x(i)*y(i);
end

A = [n sumx;sumx sum_x2];
B = [sumy ;sumxy];
z = inv(A)*B;

disp(z);
