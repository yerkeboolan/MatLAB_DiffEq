f=@(x,y)7*exp(-3*x)-3*y;
[x1,y1]=EulerM(f,0,1,6,10);
[x2,y2]=EulerM(f,0,1,6,20);
[x3,y3]=EulerM(f,0,1,6,40);
y11=exp(-3*x1).*(7*x1+6);
y12=exp(-3*x2).*(7*x2+6);
y13=exp(-3*x3).*(7*x3+6);
g=@(x1,u1)7;
[x1,u1]=EulerM(g,0,1,6,10);
[x2,u2]=EulerM(g,0,1,6,20);
[x3,u3]=EulerM(g,0,1,6,40);
y21=exp(-3*x1).*u1;
y22=exp(-3*x2).*u2;
y23=exp(-3*x3).*u3;
plot(x1,y1)
title('Yerkebulan Zhumagali 3.1 #13 : dy/dx+3y=7exp(−3x)')
hold on
plot(x2,y2)
hold on
plot(x3,y3)
err=abs(y11-y1);
err1=abs(y12-y2);
err2=abs(y13-y3);
figure
plot(x1,err)
title('Yerkebulan Zhumagali 3.1 #13 : y=exp(−3x)*(7x + 6)')
hold on
plot(x2,err1)
hold on
plot(x3,err2)
