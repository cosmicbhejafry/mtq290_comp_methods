f = @(x) tan(x) - x;
g = @(x) (sec(x))^2 - 1; %derivative fn
iterfn = @(x) x - f(x)/g(x);
%a = 0;
%b = pi;
x0 = 4;
x1 = iterfn(x0);

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
