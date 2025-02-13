/*DETERMINATOIN OF ROOTS FROM TWO CURVE GRAPHICAL METHOD.
separate the equation e^-x -x =0 into two parts and determine its roots graphically*/
x=[0:.0001:2];
h=length(x);
for i=1:h
    y(i)=exp(-x(i));
    
end
subplot(1,3,1)
plot(x,y,1);
xlabel('----->x','fontsize',3);
ylabel('----->y','fontsize',3);
title('GRAPH OF $ exp(-x) $','fontsize',4);
xgrid(4,1);
subplot(1,3,2)
plot(x,x,1);
xlabel('----->x','fontsize',3);
ylabel('----->z','fontsize',3);
title('GRAPH OF $ x $','fontsize',4);
xgrid(5,1);
subplot(1,3,3)
plot(x,y,1);
plot(x,x,1);
xlabel('----->x','fontsize',3);
ylabel('----->y','fontsize',3);
title('GRAPH OF $ exp(-x)and x $','fontsize',4);
xgrid(6,1);
p=min(abs(y-x));
disp(p);

for j=1:h
if y(j)-x(j)==0 then
    disp(x(j));
elseif y(j)-x(j)==p
    disp("not found!. then minimum value of difference of two function is considered as solution")
    disp(x(j))
end
end

