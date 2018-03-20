f=@(x,y)7*exp(4*x)-3*y;

[x,y1]=EulerM(f,0,1,2,10);
[x,y2]= midpoint(f,0,1,2,10);
[x,y3]= EulerImproved(f,0,1,2,10);
[x,y4]= Runge_Kutta(f,0,1,2,10);

Y=exp(4*x)+exp(-3*x);

plot(x,y1)
title('Yerkebulan Zhumagali 3.1 #6 : dy/dx=7*exp(4*x)-3*y')
hold on
plot(x,y2)
hold on
plot(x,y3)
hold on
plot(x,y4)

err1=abs(Y-y1);
err2=abs(Y-y2);
err3=abs(Y-y3);
err4=abs(Y-y4);

figure
plot(x,err1)
title('Yerkebulan Zhumagali 3.1 #6 Euler method')

figure
plot(x,err2)
title('Yerkebulan Zhumagali 3.1 #6 Midpoint')

figure
plot(x,err3)
title('Yerkebulan Zhumagali 3.1 #6 Improved Euler')

figure
plot(x,err4)
title('Yerkebulan Zhumagali 3.1 #9 Runge-Kutta')





