syms x;
p0 = 1;
p1 = x; 

%finding polyn

i = 1; 
n = 4;
while(i<n) 
    p_temp = x.*(2*i + 1).*p1 - (i).*p0; 
    p_temp = (1/(i+1)).*p_temp;
    p0 = p1;
    p1 = p_temp;
    disp(i + "th polyn is: ");
    disp(p1);
    i = i+1;
end





