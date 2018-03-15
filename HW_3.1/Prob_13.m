f=@(x,y)7*exp(-3*x)-3*y;
[x1,y1]=Euler(f,0,1,6,10);
[x2,y2]=Euler(f,0,1,6,20);
[x3,y3]=Euler(f,0,1,6,40);
y11=exp(-3*x1).*(7*x1+6);
y12=exp(-3*x2).*(7*x2+6);
y13=exp(-3*x3).*(7*x3+6);
g=@(x1,u1)7;
[x1,u1]=Euler(g,0,1,6,10);
[x2,u2]=Euler(g,0,1,6,20);
[x3,u3]=Euler(g,0,1,6,40);
y21=exp(-3*x1).*u1;
y22=exp(-3*x2).*u2;
y23=exp(-3*x3).*u3;
A=[y1,y11,y21]
B=[y2,y12,y22]
C=[y3,y13,y23]