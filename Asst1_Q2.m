%function given
f = @(x) 230*x^4 + 18*x^3 + 9*x^2 - 221*x - 9;

%BISECTION METHOD
%interval one
a1 = -1; b1 = 0; 

%temp vars for bisection
a = -1; b = 0; 
x0 = (a+b)/2;
iter = 1;
while(b-a>10^-3)
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
%it comes out to be -0.0405

%interval two
a1 = 0; b1 = 1; 

%temp vars for bisection
a = 0; b = 1; 
x0 = (a+b)/2;

while(b-a>10^-3)
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
end

disp("using Bisection method, our approximation for interval " + a1 + " to " + b1 + " is: " + x0)
%it comes out to be 0.9624

        
%SECANT METHOD
iterfn1 = @(x,y) x - (f(x))*(x-y)/(f(x) - f(y));

%interval one
a = -1; b = 0;

y0 = a; 
y1 = b; 
y2 = iterfn1(y1,y0);

while(abs(y2-y1)>10^-3)
    if(y2==0)
        disp("found root!");
        break;
    else
       % disp(x0)
        %disp(x1)
        y0 = y1;
        y1 = y2;
        y2 = iterfn1(y1,y0);
    end
end

disp("using Secant method method, our approximation for interval " + a + " to " + b + " is: " + x0)
%it comess out to be -0.0407


%interval one
a = 0; b = 1;

y0 = a; 
y1 = b; 
y2 = iterfn1(b,a);

while(abs(y2-y1)>10^-3)
    if(y2==0)
        disp("found root!");
        break;
    else
       % disp(x0)
        %disp(x1)
        y0 = y1;
        y1 = y2;
        y2 = iterfn1(y1,y0);
    end
end

disp("using Secant method method, our approximation for interval " + a + " to " + b + " is: " + x0)
%it comess out to be -0.0407

%DISCUSSION


