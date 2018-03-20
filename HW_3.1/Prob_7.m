f=@(x,y)3./x.^3-2*y./x+1;
[x1,y1]=EulerM(f,1,2,1,10);
[x2,y2]=EulerM(f,1,2,1,20);
[x3,y3]=EulerM(f,1,2,1,40);
y11=(9.*log(x1)+x1.^3+2)./(3*x1.^2);
y12=(9.*log(x2)+x2.^3+2)./(3*x2.^2);
y13=(9.*log(x3)+x3.^3+2)./(3*x3.^2);
plot(x1,y1)
title('Yerkebulan Zhumagali 3.1 #7 : dy/dx=3/x^3-2*y/x+1')
hold on
plot(x2,y2)
hold on
plot(x3,y3)
err=abs(y11-y1);
err1=abs(y12-y2);
err2=abs(y13-y3);
figure
plot(x1,err)
title('Yerkebulan Zhumagali 3.1 #7 : y=(9*log(x)+x^3+2)/(3*x^2)')
hold on
plot(x2,err1)
hold on
plot(x3,err2)


