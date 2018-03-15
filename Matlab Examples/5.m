f=@(x,y) sin(x*y)-x^2*y
[x,y]=Eulerh(f,1,pi,0.2,3)
plot(x,y)
title('Baibaktiyeva Aksunkar 3.1 #5 : dy+x^2y=sinxy')