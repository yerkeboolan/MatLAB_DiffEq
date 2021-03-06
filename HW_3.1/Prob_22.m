f=@(x,y)x.^2./(1+y.^2)-2.*y;
[x1,y1]=Euler(f,2,3,1,10);
[x2,y2]=Euler(f,2,3,1,20);
[x3,y3]=Euler(f,2,3,1,40);
g=@(x,y)exp(-2.*x).*x.^2./(1+u.^2.*exp(-4.*x))
[x1,u1]=Euler(g,2,3,1*exp(2),10);
[x2,u2]=Euler(g,2,3,1*exp(2),20);
[x3,u3]=Euler(g,2,3,1*exp(2),40);
y11=u1.*exp(-2.*x1);
y12=u2.*exp(-2.*x2);
y13=u3.*exp(-2.*x3);
A=[y1,y11]
B=[y2,y12]
C=[y3,y13]
plot(x1,y1)
title('Yerkebulan Zhumagali 3.1 #22 : dy/dx=x^2/(1+y^2)-2*y')
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
