x=[0:0.001:2];
m=length(x);
for i=1:m
    y(i)=(4*x(i)^3)-(6*x(i)^2)+7*x(i)-2.3;
end
n=length(y);
disp(n);
plot(x,y,-1)
