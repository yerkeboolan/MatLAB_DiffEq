f=@(x,y) x^2-3*x*y+y^2-3*y;
[x,y]=EulerM(f,0,2,0.05,3);
plot(x,y);
title('Zhumagali Yerkeboolan 3.1 #3 : dy+3y=x^2-3xy+y^2');