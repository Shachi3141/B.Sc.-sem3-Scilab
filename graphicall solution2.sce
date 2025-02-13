/*DETERMINATOIN OF ROOTS FROM TWO CURVE GRAPHICAL METHOD.
separate the equation e^-x -x =0 into two parts and determine its roots graphically*/
x=[0:.0001:1];
h=length(x);
for i=1:h
    y(i)=exp(-x(i))-x(i);
end
plot(x,y,1);
xlabel('----->x','fontsize',5);
ylabel('----->y','fontsize',5);
title('GRAPH OF $ exp(-x)-x $','fontsize',6);
xgrid(6,1);
p=min(abs(y));
for j=1:h
if y(j)==0 then
    disp(x(j));
elseif y(j)==p
    disp("not found!. then minimum value of y for which x is considered as solution")
    disp(x(j))
end
end

