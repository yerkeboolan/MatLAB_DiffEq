function[x,y]=RungeKutta(f,x0,y0,b,N)
h=(b-x0)/N
x=x0:h:b
y=zeros(size(x));
y(1)=y0;
for k=1:N
    k1=f(x(k),y(k));
    k2=f(x(k)+h/2, y(k)+h/2*k1);
    k3=f(x(k)+h/2, y(k)+h/2*k2);
    k4=f(x(k)+h, y(k)+h*k3);
    y(k+1)=y(k)+h/6*(k1+2*k2+2*k3+k4);   
end
x=x';
y=y';
