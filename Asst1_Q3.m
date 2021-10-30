%function given:
f = @(x) (x-5)*(x-1)^4;

%derivative fn:
g = @(x) (x-1)^4 + 4*(x-5)*(x-1)^3; 

%tolerance
tolr = 10^-7;

%no of iterations
iter = 0;

%NEWTON'S METHOD

%iteration function for this method
iterfn = @(x) x - f(x)/g(x);

%interval:
%a = 0; b = 1; 

%initial guess is x0:
x0 = -10;

x1 = iterfn(x0);
iter = 1;

while(abs(x1-x0)>tolr)
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
%using Newton method, our approximation for root is: 1 in 62 iterations


%MODIFIED NEWTON'S METHOD
%multiplicity
m = 4;

%iteration function for this method
iterfn1 = @(x) x - m*f(x)/g(x);

%initial guess is x0:
x0 = -10;

x1 = iterfn1(x0);
iter = 1;

while(abs(x1-x0)>tolr)
    iter = iter + 1;
    if(f(x1)==0)
        disp("found root!");
        break;
    else
       % disp(x0)
        %disp(x1)
        x0 = x1;
        x1 = iterfn1(x0);
    end
end

disp("using modified Newton method, our approximation for root is: " + x1 + " in " + iter + " iterations")
%using modified Newton method, our approximation for root is: 1 in 5 iterations

%DISCUSSION
%no. of iterations reduces drastically for modified method, 
%it becomes 5 from 62