A = [-2,0,0;1,5,0;3,2,1];
x1=0; x2=0; x3=0;
x = [x1;x2;x3];
b = [2;4;0];

%forward substitution

x(1) = b(1)/A(1,1);
disp(x)
n = 3;
for i = 2:n %with step of 1
    disp(i)
    if(A(i,i)==0)
        disp("means no uniquesoln");
        break;
    else
        x(i) = (1/A(i,i))*(b(i) - A(i,1:i-1)*(x(1:i-1)));
    end
end

disp(x)