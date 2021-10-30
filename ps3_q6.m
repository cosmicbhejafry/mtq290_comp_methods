A = [1,1,-1;1,2,-2;-2,1,1];
x1=0; x2=0; x3=0;
x = [x1;x2;x3]; 
b = [1;1;1];

%doolittle: A = LU
n = 3;

L = [1,0,0;0,1,0;0,0,1];
U = [1,0,0;0,1,0;0,0,1];

U = A;

for i=1:n
    L(i+1:n,i) = A(i+1:n,i)/A(i,i);
    for j = i+1:n
        fact = U(j,i)/U(i,i);
        U(j,:) = U(j,:) - fact*U(i,:);
        %b(j) = b(j) - fact*b(i);
    end
end

disp(U)
disp(L)
disp(L*U)
disp(A)
%solving: first fwd subst

x(1) = b(1)/L(1,1);
disp(x)
n = 3;
for i = 2:n %with step of 1
    disp(i)
    if(L(i,i)==0)
        disp("means no uniquesoln");
        break;
    else
        x(i) = (1/L(i,i))*(b(i) - L(i,1:i-1)*(x(1:i-1)));
    end
end

disp(x)

%solving: bkwd substn
x1 = [0;0;0]
x1(n) = x(n)/U(n,n);
disp(x1)
for i = n-1:-1:1 %with step of 1
    disp(i)
    if(U(i,i)==0)
        disp("means no uniquesoln");
        break;
    else
        x1(i) = (1/U(i,i))*(x(i) - U(i,i+1:n)*(x1(i+1:n)));
    end
end

disp(x1)



