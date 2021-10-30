
%PART 1: approximation of solution

%function given
f = @(x) x*cos(x);
%derivative fn of f
g = @(x) cos(x) - x*sin(x); 
%function for each iteration in Newton's method
%i.e. x(n) = iterfn(x(n-1))
iterfn = @(x) x - f(x)/g(x);

%interval to find soln in
a = 0;
b = pi;

%initial guess
x0 = 1;
x1 = iterfn(x0);

numiter = 0; %number of iterations


while(abs(x1-x0)>10^-5)
    numiter = numiter + 1;
    if(x1==0)
        disp("found root!");
        break;
    else
       %disp(x0)
        %disp(x1)
        x0 = x1;
        x1 = iterfn(x0);
    end
    
end

disp("our approximation is: ")
disp(x1) %answer comes out to be 2.0946


%PART 2: plotting the graph
 x = linspace(0,pi); %specify range here
 y1 = x.*cos(x); %specify f(x) here
 plot(x,y1,'o') 
 hold on
 n = 3; %specify n, for x^n which you want to see on graph          
 int = 0;
 for i = 1:n
     int = int+1;
     y2 = x.^int;
     plot(x,y2)
     %hold on
 end
 %plot(x,0)
 hold off
     
