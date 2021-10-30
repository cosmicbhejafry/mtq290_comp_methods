%given fn
f = @(x) cos(x) - sin(x) - 1/2;

%tolerance
toln = 10^-4;

%NEWTON'S METHOD

%iteration function for this method
iterfn = @(x) x - f(x)/g(x);

%interval:
%a = 0; b = 1; 

%initial guess is x0:
x0 = -4;

x1 = iterfn(x0);
iter = 1;

while(abs(x1-x0)>toln)
    iter = iter + 1;
    if(f(x1)==0)
        disp("found root!");
        break;
    else
       % disp(x0)
        %disp(x1)
        x0 = x1;
        x1 = iterfn(x0);
    end
end

disp("using Newton method, our approximation for root is: " + x1 + " in " + iter + " iterations")

%BISECTION
a = 0; b = 2*pi; 
x0 = (a+b)/2;
iter = 1;
while(b-a>toln)
    if(f(x0)==0)
        disp("found root!")
        break
    elseif(f(x0)*f(a)<0)
        b = x0;
        x0 = (a+b)/2;
    else
        a = x0;
        x0 = (a+b)/2;
    end
    iter = iter + 1;
end

disp("using Bisection method, our approximation for interval " + a1 + " to " + b1 + " is: " + x0 + "in iterations: " + iter)
