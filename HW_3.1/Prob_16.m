f=@(x,y)sin(x)/x.^2-y./x;
[x1,y1]=EulerM(f,1,3,2,10);
[x2,y2]=EulerM(f,1,3,2,20);
[x3,y3]=EulerM(f,1,3,2,40);
g=@(x,u)sin(x)./x^2;
[x1,u1]=EulerM(g,1,3,2,10);
[x2,u2]=EulerM(g,1,3,2,20);
[x3,u3]=EulerM(g,1,3,2,40);
y11=u1./x1;
y12=u2./x2;
y13=u3./x3;
A=[y1,y11]
B=[y2,y12]
C=[y3,y13]
plot(x1,y1)
title('Yerkebulan Zhumagali 3.1 #16 : dy/dx=sin(x)/x^2-y/x;')
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
