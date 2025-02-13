/*Graphical method to find the roots of an equation
determine the real roots of f(x)=4x^3-6x^2+7x-2.3 graphically.*/

x=[0.4501:0.00001:.4502];
m=length(x);
for i=1:m
    y(i)=(4*x(i)^3)-(6*x(i)^2)+7*x(i)-2.3;
end
plot(x,y,1)
xgrid(6,1);
plot(x,0,'r');
/*i=1;
if y(i)==0 then
    disp(i);
else
    disp("nothing found!");
    i=i+1;
end*/
//disp(min(abs(y)));
p=min(abs(y));
q=-p;
for j=1:m
if y(j)==p then
    disp(j);
    disp(x(j));
elseif y(j)==q then
    disp(j);
    disp(x(j));
end
end

