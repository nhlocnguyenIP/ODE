clear all;
close all;
R = 8;
Nx = 400;
dx = R/(Nx - 1);
x = (0:dx:R)';
y = zeros(size(x));

a = 36;
b = 12;
c = 37;
u = 0.7;
v = 1;
f = zeros(size(x));
y = SecondOrderEquation_Dir(x, a, b, c, f, u, v);

y_true = -((7*cos(8)*exp(-4/3) - 10)*exp(-x/6).*sin(x))/(10*exp(-4/3)*sin(8)) + (7*exp(-x/6).*cos(x))/10;
figure;
plot(x, y,'LineWidth',4);
hold on;
plot(x, y_true,'.');

%Excersise 1: read and understand "sparse matrix".
%Excersise 2: Write a function to solve the equation 
% a y''(x) + b y'(x) + cy(x) = f, y(0) = u, y'(0) = v;
%Excersise 3: Write a function to solve the equation 
% a(x) y''(x) + b(x) y'(x) + c(x) y(x) = f, y(0) = u, y'(0) = v;
%Excersise 4: Write a function to solve the equation 
% a(x) y''(x) + b(x) y'(x) + c(x) y(x) = f, y(0) = u, y(R) = v;



