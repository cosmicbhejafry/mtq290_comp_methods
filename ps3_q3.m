A = [1,1,-1;0,1,-1;0,0,2];
x1=0; x2=0; x3=0;
x = [x1;x2;x3];
b = [1;-1;5];

%bkwrd substitution
n = 3;

x(n) = b(n)/A(n,n);
disp(x)
for i = n-1:-1:1 %with step of 1
    disp(i)
    if(A(i,i)==0)
        disp("means no uniquesoln");
        break;
    else
        x(i) = (1/A(i,i))*(b(i) - A(i,i+1:n)*(x(i+1:n)));
    end
end

disp(x)