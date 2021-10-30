f = @(x) 230*x^4 + 18*x^3 + 9*x^2 - 221*x - 9;

%iteration function for secant method
%x(n) = x, x(n-1) = y
iterfn1 = @(x,y) x - (f(x))*(x-y)/(f(x) - f(y));

%interval one
a = -1; b = 0;

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

disp("our approximation is: ")
disp(y2) %it comess out to be -0.0407


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

disp("our approximation is: ")
disp(y2) %it comess out to be -0.0407

%DISCUSSION
