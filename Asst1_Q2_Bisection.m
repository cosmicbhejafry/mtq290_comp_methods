%function given
f = @(x) 230*x^4 + 18*x^3 + 9*x^2 - 221*x - 9;

%interval one
a = -1; b = 0; 
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

disp("our approximation is: ")
disp(x0) %it comes out to be -0.0405

%interval two
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

disp("our approximation is: ")
disp(x0) %it comes out to be 0.9624

        