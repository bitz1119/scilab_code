clc;
m = input('enter row');
n = input('enter col');
a = zeros(m,n);
b = zeros(n,m);
disp('enter elements');
for i = 1:m
    for j = 1:n
        a(i,j) = input('');
    end
end
for i = 1:n
    for j = 1:m
        b(i,j) = a(j,i);
    end
end
disp(a);
disp(b);
