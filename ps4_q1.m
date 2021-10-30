n = 3; 

A = rand(n);
disp(A)
b = true;
for i = 1:n
    x = abs(A(i,i));
    y = 0; 
    for j = 1:n
        y = y + abs(A(i,j));
    end
    y = y - x;
    if(y>x)
        b = false;
        break
    end
end

disp(b)