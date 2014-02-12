%opgave 1
x =[1, 3, 5 ,7]';
y =[14, 17,19,20]';
linreg(x,y);

%opgave 8
x= (1:0.1:4)';
y = log(x);
res = linreg(x, y);

a = res(2, :);

b = res(1, :);
y2 = a * x + b;
%plot(x, y, x, y2);

%test

data = dlmread('polynomial_data.txt');

x = data(:, 1);
y = data(:, 2);

linreg2(x, y, 2)
linregn(x, y, 2)