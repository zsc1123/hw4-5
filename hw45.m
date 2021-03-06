clear
%problem (a)
load('p5.mat')
figure(1)
scatter3(x1,x2,Y)
%problem (b)
n=1000;
phi1=[ones(n,1) x1 x2];
theta1=phi1\Y;
Y1=phi1*theta1;
mse1=mean((Y-Y1).^2);
%problem (c)
[A,B]=meshgrid(x1,x2);
Y11=theta1(1,1)+theta1(2,1)*A+theta1(3,1)*B;
figure(2)
s1=surf(A,B,Y11);
s1.EdgeColor='none';
s1.FaceColor='interp';
%problem (d)
phi2=[ones(n,1) x1 x2 x1.^2 x1.*x2 x2.^2];
theta2=phi2\Y;
Y2=phi2*theta2;
mse2=mean((Y-Y2).^2);
%problem (e)
Y22=theta2(1,1)+theta2(2,1)*A+theta2(3,1)*B+theta2(4,1)*A.^2+theta2(5,1)*A.*B+theta2(6,1)*B.^2;
figure(3)
s2=surf(A,B,Y22);
s2.EdgeColor='none';
s2.FaceColor='interp';
%problem (f)
phi3=[ones(n,1) x1.*x2 sin(0.1*x2)];
theta3=phi3\Y;
Y3=phi3*theta3;
mse3=mean((Y-Y3).^2);
%problem (g)
Y33=theta3(1,1)+theta3(2,1)*A.*B+theta3(3,1)*sin(0.1*A);
figure(4)
s3=surf(A,B,Y33);
s3.EdgeColor='none';
s3.FaceColor='interp';