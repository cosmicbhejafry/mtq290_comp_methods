f1 = @(x,y)  x + y - 20;
f1x = @(x,y) 1;
f1y = @(x,y) 1;
 %derivative fn
f2x = @(x,y) (1 + 0.5*x^-0.5)*(y + y^0.5);
f2y = @(x,y) (1 + 0.5*y^-0.5)*(x + x^0.5);

iterfn = @(x) x - 3*f(x)/g(x);

x0 = 10; y0 = 10;
x1 = iterfn(x0);

J = [f1x(x0,y0) f2x(x0,y0); f1y(x0,y0) f2y(x0,y0)];
F = [-f1(x0,y0); -f2(x0,y0)];
H = F*inv(J);
numiter = 0;
while(abs(x1-x0)>10^-8)
    numiter = numiter + 1;
    if(x1==0)
        disp("found root!");
        break;
    else
       % disp(x0)
        %disp(x1)
        x0 = x1;
        x1 = iterfn(x0);
    end
    
end

disp(x0)
disp(x1)