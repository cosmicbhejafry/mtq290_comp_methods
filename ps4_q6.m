n = 2;
A = [4,2;1,4];
b = [0;1];
tol = 10^-5;

x0 = [0;0];
x1 = gs_jac(A,b,x0,n);
err = norm(x1-x0,Inf);
iter = 1; 
while(abs(err)>tol)
    x0 = x1;
    x1 = gs_jac(A,b,x0,n);
    err = norm(x1-x0,Inf);
    iter = iter+1; 
    %disp(iter + " " + x1 + " " + err);
end

disp("for gauss jacibo " + iter + " " + x1 + " " + err);

x0 = [0;0];
x1 = gs_sd(A,b,x0,n);
err = norm(x1-x0,Inf);
iter = 1; 
%disp(iter + " " + x1 + " " + err);
while(abs(err)>tol)
    x0 = x1;
    x1 = gs_sd(A,b,x0,n);
    err = norm(x1-x0,Inf);
    iter = iter+1; 
    %disp(iter + " " + x1 + " " + err);
end
disp("for gauss seidel " + iter + " " + x1 + " " + err);
