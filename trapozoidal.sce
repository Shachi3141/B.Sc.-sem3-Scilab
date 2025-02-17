//TRAPOZOIDAL METHOD FOR FIND INTEGRATION
//FORMULA I=(h/2)[f(x0)+f(xn)+2f(a+ih)]    where h=(a+b)/n; n=no. of interval.
clc;
clear;
function u=fn(x)
    u=4*x^3+3*x^2+5;
endfunction
a=input("give lower limit ");
b=input("give upper limit ");
n=input("how many interval do you want");
h=(b-a)/n;
I1=fn(a)+fn(b);

I2=0;
for i=1:n-1
    I2=I2+fn(a+i*h);
end
I=h/2*(I1+2*I2);
disp(I);




