[x,y]=meshgrid(-3:.3:3, -2:.2:2);
dy=x+sin(y)
dx=ones(size(dy))
dy1=dy./(sqrt(dx.^2+dy.^2))
dx1=dx./(sqrt(dx.^2+dy.^2))
quiver(x,y,dx1,dy1)
