f=@(x,y) y
[x,y]=Euler(f,0,1,3,100)
plot(x,y,x,exp(x))
y1=exp(x)
Err1=abs(y-y1)
plot(x, Err1)

% % [x,y]=ImpEuler(f,0,1,3,100)
% % plot(x,y,x,exp(x))
% % y1=exp(x)
% % Err2=abs(y-y1)
% % plot(x, Err2)
% % 
% % [x,y]=Midpoint(f,0,1,3,100)
% % plot(x,y,x,exp(x))
% % y1=exp(x)
% % Err3=abs(y-y1)
% % plot(x, Err3)
% 
% [x,y]=RungeKutta(f,0,1,3,100)
% plot(x,y,x,exp(x))
% y1=exp(x)
% Err4=abs(y-y1)
% plot(x, Err4)
% 
% ode45(ode23)
% [x,y(ode)]=ode45(f,[0,1],1)
% Errode=abs(exp(x)-y(ode))
% plot(x,Errode)
% 
% plotyy(x,Err4,x,Errode)