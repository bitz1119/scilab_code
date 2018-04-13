clc;
disp('parabola fitting')
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
sum_x3 = 0;
sum_x4 = 0;
sum_x2y = 0;

for i = 1:n
    sumx = sumx+x(i);
    sumy = sumy+y(i);
    sum_x2 = sum_x2+x(i)*x(i);
    sumxy = sumxy+x(i)*y(i);
    sum_x3 = sum_x3 +x(i)*x(i)*x(i);
    sum_x4 = sum_x4 +x(i)*x(i)*x(i)*x(i);
    sum_x2y = sum_x2y + x(i)*x(i)*y(i);
end

A = [n sumx sum_x2;sumx sum_x2 sum_x3;sum_x2 sum_x3 sum_x4];
B = [sumy ;sumxy;sum_x2y];
z = inv(A)*B;
disp(z);
