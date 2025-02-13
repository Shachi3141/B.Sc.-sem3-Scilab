clc;clear;
/*solving ODE : euler's method
dy/dx=-2x^3+12x^2-20x+8.5
from x=0 to 4
initial condition at x0=0 ,y0=1
carry out the equation for the step size h=0.5 and h=0.25
plot the predicted result and compare with the true result. 
*/
function u=f(x)
    u=-2*x^3+12*x^2-20*x+8.5;
endfunction
x0=0;
y0=1;
xf=4;
h1=0.5;
h2=0.25;
n1=(xf-x0)/h1;
n2=(xf-x0)/h2;
x1(1)=x0;
x2(1)=x0;
y1(1)=y0;
y2(1)=y0;
for i=1:n1
    x1(i+1)=x1(i)+h1;
    y1(i+1)=y1(i)+h1*f(x1(i));
end

for i=1:n2
    x2(i+1)=x2(i)+h2;
    y2(i+1)=y2(i)+h2*f(x2(i));
end
//pridicted result
disp('these are x1----->',x1);
disp('these are y1----->',y1);

disp('these are x2----->',x2);
disp('these are y2----->',y2);

//true result
xt=[0:0.1:4]
for i=1:length(xt)
yt(i)=-0.5*xt(i)^4+4*xt(i)^3-10*xt(i)^2+8.5*xt(i)+1;
end


plot2d(x1,y1,1);
plot2d(x2,y2,2);
plot2d(xt,yt,3);
xgrid(1);
xlabel("X------->","fontsize",4);
ylabel("Y------->","fontsize",4);
title("TRUE AND PREDICTED GRAPH BY EULAR METHOD","fontsize",5)          
h=legend(["when h=0.5","when h=0.25","true graph"],5);
