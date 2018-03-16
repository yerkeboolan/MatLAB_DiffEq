f=@(x,y)2*y+1/(1+x.^2);
g=@(x,y)1/((1+x.^2)*exp(2*x));
[x1,y1]=Euler(f,2,3,2,10);
    [x1,u1]=EulerM(g,2,3,2/exp(4),10);
    y11=u1.*exp(2*x1);
        A=[y1,y11]
[x2,y2]=Euler(f,2,3,2,20);
    [x2,u2]=EulerM(g,2,3,2/exp(4),20);
    y22=u2.*exp(2*x2);
    B=[y2,y22]
[x3,y3]=Euler(f,2,3,2,40);
[x3,u3]=Euler(g,2,3,2/exp(4),40);
    y33=u3.*exp(2*x3);
    C=[y3,y33]

