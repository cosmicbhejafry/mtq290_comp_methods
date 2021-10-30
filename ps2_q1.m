f = @(x) x^3 - 2*x - 5;
g = @(x) 3*(x^2) - 2; %derivative fn
iterfn = @(x) x - f(x)/g(x);
a = 1;
b = 4;
x0 = 1;
x1 = iterfn(x0);
disp(x0)
disp(x1)
numiter = 0;
while(abs(x1-x0)>10^-5)
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
