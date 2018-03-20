f=@(x,y) 2*x^2+3*y^2-2;
[x,y]=EulerM(f,2,1,0.05,3);
plot(x,y);
title('Zhumagali Yerkeboolan 3.1 #1 : dy=2x^2+3y^2-2');
