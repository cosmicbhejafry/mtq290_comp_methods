function y=gs_jac(A,b,x,n)
    
    for i=1:n
        sum = b(i);
        for j = 1:n
            if j==i
                continue
            else
                sum = sum - A(i,j)*x(j);        
            end
        end
        sum = sum/A(i,i);
        y(i) = sum;
    end
    
end