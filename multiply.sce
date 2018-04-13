clc;
m = input('enter row');
n = input('enter col');
a = zeros(m,n);

disp('enter elements');
for i = 1:m
    for j = 1:n
        a(i,j) = input('');
    end
end

r1 = input('enter row');
r2 = input('enter col');
b = zeros(r1,r2);
disp('enter elements');
for i = 1:r1
    for j = 1:r2
        b(i,j) = input('');
    end
end
c = zeros(m,r2);
if r1==m then
    for i = 1:m
        for j = 1:r2
            for k = 1:r1
                c(i,j) = c(i,j)+a(i,k)*b(k,j);
            end
        end
    end
else
    disp("mul not possible");
end
disp(a);
disp(b);
disp(c);
