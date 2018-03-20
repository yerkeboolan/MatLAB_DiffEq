f=@(x,y)(-cos(x)-2*x)/(3*y.^2+4*y);
[x1,y1]=Euler(f,0,1,1,10);
[x2,y2]=Euler(f,0,1,1,20);
[x3,y3]=Euler(f,0,1,1,40);
figure
plot(x1,y1)
title('Yerkebulan Zhumagali 3.1 #11 : dy/dx=(-cos(x)-2*x)/(3*y^2+4*y)')
hold on
plot(x2,y2)
hold on 
plot(x3,y3)
