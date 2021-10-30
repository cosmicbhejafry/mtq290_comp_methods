%finding derivative
syms x;
p0 = 1;
p1 = x;
p0pr = 0;
p1pr = 1; 

i = 1; 
n = 2;
while(i<n) 
    p_temp = x.*(2*i + 1).*p1 - (i).*p0; 
    p_temp = (1/(i+1)).*p_temp;
    p_temppr = x.*(2*i + 1).*p1pr + (2*i + 1).*p1 - (i).*p0pr;
    p_temppr = (1/(i+1)).*p_temppr;
    p0 = p1;
    p1 = p_temp;
    
    p0pr = p1pr;
    p1pr = p_temppr;
    
    i = i+1;
    disp(i + "th polyn is: ");
    disp(p1);
    disp(i + "th polyn's derivative is: ");
    disp(p1pr);
end

%Newton Rhapson
iterfn = @(y) y - subs(p1,y)/subs(p1pr,y);
x0 = -cos(pi/2*n+2);
x1 = iterfn(x0);
numiter = 0;
while(abs(x1-x0)>10^-1)
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
x1 = double(x1);
disp(x1);