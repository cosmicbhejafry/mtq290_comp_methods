A = [1,2,1;2,2,3;-1,-3,0];
x1=0; x2=0; x3=0;
x = [x1;x2;x3];
b = [0;3;2];

%gausss elimn
n = 3;

%method to reduce augmented matrix to uppr tri form:
%augm = [1,2,1,0;2,2,3,3;-1,-3,0,2];

for i = 1:n
    for j = i+1:n
        fact = A(j,i)/A(i,i);
        A(j,:) = A(j,:) - fact*A(i,:);
        b(j) = b(j) - fact*b(i);
    end
end

disp(A)
disp(b)
%now that A is uppertri, use Q3.
x(n) = b(n)/A(n,n);
%disp(x)
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
        



