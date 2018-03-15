f=@(x,y)x.*y.^2.*(y+1)-3.*y;
[x1,y1]=Euler(f,0,1,1,10);
[x2,y2]=Euler(f,0,1,1,20);
[x3,y3]=Euler(f,0,1,1,40);
g=@(x,u)x.*u.^2.*exp(-3.*x).*(u.*exp(-3.*x)+1);
[x1,u1]=Euler(g,0,1,1,10);
[x2,u2]=Euler(g,0,1,1,20);
[x3,u3]=Euler(g,0,1,1,40);
y11=u1.*exp(-3.*x1);
y12=u2.*exp(-3.*x2);
y13=u3.*exp(-3.*x3);
A=[y1,y11]
B=[y2,y12]
C=[y3,y13]