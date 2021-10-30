A = diag([1,3,7]);
x1 = 0; x2 = 0; x3 = 0;
X = [x1; x2; x3];

b = [2;1;7];
n = 3;
%i = 0;
for i=1:n
    if(A(i,i)==0)
        disp("detmnt not 0, break all loops")
        break;
    else
        X(i,1) = b(i,1)*(1/A(i,i));
    end
end

disp(X)