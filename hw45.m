clear
load('p5.mat')
figure(1)
scatter3(x1,x2,Y)
n=1000;
phi=[ones(n,1) x1 x2];
theta11=phi\Y;
Y1=phi*theta11;
mse1=mean((Y-Y1).^2);
