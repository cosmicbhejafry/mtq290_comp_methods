function x=gs_sd(A,b,x,n)
    
    for i=1:n
        sum = b(i);
        for j = 1:n
            sum = sum - A(i,j)*x(j);
        end
        sum = sum/A(i,i);
        x(i) = x(i) + sum;
    end
    
end