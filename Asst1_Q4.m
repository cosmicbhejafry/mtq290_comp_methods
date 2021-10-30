%function given:
f = @(x) (x-5)*(x-1)^4;

%derivative fn:
g = @(x) (x-1)^4 + 4*(x-5)*(x-1)^3; 

%tolerance
tolr = 10^-7;

%no of iterations
iter = 0;


%function to find order of convergence:
ooc = @(t0,t1,t2) (log(t2/t1))/log(t1/t0);


%NEWTON'S METHOD

%iteration function for this method
iterfn = @(x) x - f(x)/g(x);


%initial guess is x0:
x0 = -10;
x1 = iterfn(x0);
e0 = abs(x1-x0);
x2 = iterfn(x1);
e1 = abs(x2-x1);
x3 = iterfn(x2);
e2 = abs(x3-x2);

p0 = ooc(e0,e1,e2);

while(e2>tolr)
    if(f(x1)==0)
        disp("found root!");
        break;
    else
       % disp(x0)
        %disp(x1)
        x0 = x1;
        x1 = x2;
        x2 = x3;
        x3 = iterfn(x2);
        e0 = abs(x1-x0); e1 = abs(x1-x2);
        e2 = abs(x2-x3);
        p0 = ooc(e0,e1,e2);     
                
    end
end

disp("using Newton method, our order of convergence is: " + p0)
%using Newton method, our order of convergence is: 1


%MODIFIED NEWTON'S METHOD
%multiplicity
m = 4;

%iteration function for this method
iterfn1 = @(x) x - m*f(x)/g(x);

%initial guess is x0:
x0 = -10;
x1 = iterfn1(x0);
e0 = abs(x1-x0);
x2 = iterfn1(x1);
e1 = abs(x2-x1);
x3 = iterfn1(x2);
e2 = abs(x3-x2);

p0 = ooc(e0,e1,e2);

while(e2>tolr)
    if(f(x1)==0)
        disp("found root!");
        break;
    else
       % disp(x0)
        %disp(x1)
        x0 = x1;
        x1 = x2;
        x2 = x3;
        x3 = iterfn1(x2);
        e0 = abs(x1-x0); e1 = abs(x1-x2);
        e2 = abs(x2-x3);
        p0 = ooc(e0,e1,e2);     
                
    end
end

disp("using modified Newton method, our order of convergence is: " + p0)
%using modified Newton method, our order of convergence is: 1.9956