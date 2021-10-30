f = @(x) 230*x^4 + 18*x^3 + 9*x^2 - 221*x - 9;

a = 0; b = 1fz; 

c = (a+b)/2;

numiter = 0;
while((b-a)>10^-3)
    numiter = numiter + 1;
    if(f(c)==0)
        disp("found root!");
        break;
    elseif(f(a)*f(c)<0)
        b = c;
    else
        a = c;
       % disp(x0)
        %disp(x1)
    end
    c = (a+b)/2;
end

disp(c)