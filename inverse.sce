//inverse of a matrix

clc
b = eye(3,3)

a = zeros(3,3)
disp('enter 3*3 matrix ')
for i = 1:3
    for j = 1:3
        a(i,j) = input('')
    end
end
aug = [a,b]
disp(aug)
if(det(a)==0) then
    disp("not possible");
else
if(aug(1,1)==0 & aug(2,1)~=0) then
    c(1,:) = aug(1,:);
    aug(1,:) = aug(2,:);
    aug(2,:) = c(1,:);
elseif(aug(1,1)==0 & aug(3,1)~=0)
    c(1,:) = aug(1,:);
    aug(1,:) = aug(3,:)
    aug(3,:) = c(1,:)  ;  
end

aug(1,:) = aug(1,:)/aug(1,1);
aug(2,:) = aug(2,:)-aug(2,1)*aug(1,:);
aug(3,:) = aug(3,:)-aug(3,1)*aug(1,:);

if(aug(2,2)==0 & aug(3,2)~=0) then
    c(2,:) = aug(2,:);
    aug(2,:) = aug(3,:);
    aug(3,:) = c(2,:)  ;
end
        
disp(aug);
aug(2,:) = aug(2,:)/aug(2,2);
aug(1,:) = aug(1,:)-aug(1,2)*aug(2,:);
aug(3,:) = aug(3,:)-aug(3,2)*aug(2,:);
        
disp(aug);
aug(3,:) = aug(3,:)/aug(3,3);
aug(1,:) = aug(1,:)-aug(1,3)*aug(3,:);
aug(2,:) = aug(2,:)-aug(2,3)*aug(3,:) ;   
        
disp(aug);
end
