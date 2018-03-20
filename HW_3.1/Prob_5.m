f=@(x,y) sin(x*y)-x^2*y;
[x,y]=EulerM(f,1,pi,0.2,3);
plot(x,y);
title('Zhumagali Yerkeboolan 3.1 #5 : dy+x^2y=sinxy')