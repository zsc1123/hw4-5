clear
load('p5.mat')
figure(1)
scatter3(x1,x2,Y)
n=1000;
phi=[ones(n,1) x1 x2];
theta1=phi\Y;
Y1=phi*theta1;
mse1=mean((Y-Y1).^2);
[A,B]=meshgrid(x1,x2);
Y11=theta1(1,1)+theta1(2,1)*A+theta1(3,1)*B;
figure(2)
s=surf(x1,x2,Y11)
s.EdgeColor='none';