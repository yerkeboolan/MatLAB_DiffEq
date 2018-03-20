function [x, y] = EulerImproved(f, x0, y0, b, N)
h = (b - x0)/N;
x = x0:h:b;
y = zeros(size(x));
y(1)=y0;
for k=1:N
    y(k+1)= y(k) + (h/2)*(f(x(k), y(k)) + f(x(k+1), y(k) + h*f(x(k), y(k))));
end
x = x'; 
y = y';