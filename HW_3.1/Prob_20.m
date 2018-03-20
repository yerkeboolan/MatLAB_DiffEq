f=@(x,y)x.*y.^2.*(y+1)-3.*y;
[x1,y1]=Euler(f,0,1,1,10);
[x2,y2]=Euler(f,0,1,1,20);
[x3,y3]=Euler(f,0,1,1,40);
g=@(x,u)x.*u.^2.*exp(-3.*x).*(u.*exp(-3.*x)+1);
[x1,u1]=Euler(g,0,1,1,10);
[x2,u2]=Euler(g,0,1,1,20);
[x3,u3]=Euler(g,0,1,1,40);
y11=u1.*exp(-3.*x1);
y12=u2.*exp(-3.*x2);
y13=u3.*exp(-3.*x3);
A=[y1,y11]
B=[y2,y12]
C=[y3,y13]
plot(x1,y1)
title('Yerkebulan Zhumagali 3.1 #20 : dy/dx=x*y^2*(y+1)-3*y')
hold on
plot(x2,y2)
hold on
plot(x3,y3)
err=abs(y11-y1);
err1=abs(y12-y2);
err2=abs(y13-y3);
figure
plot(x1,err)
hold on
plot(x2,err1)
hold on
plot(x3,err2)
