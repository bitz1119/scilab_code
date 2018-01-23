clc;
m = input('enter row');
n = input('enter col');
a = zeros(m,n);
b = zeros(m,n);
c = zeros(m,n);
disp('enter elements');
for i = 1:m
    for j = 1:n
        a(i,j) = input('');
    end
end

disp('enter elements');
for i = 1:m
    for j = 1:n
        b(i,j) = input('');
    end
end

for i = 1:n
    for j = 1:m
        c(i,j) = a(i,j)+b(i,j);
    end
end
disp(a);
disp(b);
disp(c);
