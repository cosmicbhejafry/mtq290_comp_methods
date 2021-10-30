f = @(x)  27*x^4 + 162*x^3 - 180*x^2 + 62*x - 7;
g = @(x) 27*4*x^3 + 162*3*x^2 - 180*2*x + 62;
h = @(x) 27*4*3*x^2 + 162*3*2*x - 180*2;
k = @(x) 27*4*3*2*x + 162*3*2; %derivative fn
iterfn = @(x) x - 3*f(x)/g(x);

x0 = 0;
x1 = iterfn(x0);

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