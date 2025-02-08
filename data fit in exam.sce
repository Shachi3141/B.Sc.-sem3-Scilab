//question2
//datafitting
x=[2 3 4 5 6 7];
y=[4 5 5.71 6.25 6.67 7];
n=length(x);
sumxy=0;
sumx2=0;
sumx2y=0;
sumx=0;
sumy=0;
for i=1:n
    sumxy=sumxy+x(i)*y(i);
    sumx2=sumx2+x(i)*x(i);
    sumx2y=sumx2y+x(i)*x(i)*y(i);
    sumx=sumx+x(i);
    sumy=sumy+y(i);
end
A=[sumx sumy;sumx2 sumxy];
B=[sumxy;sumx2y];
C=inv(A)*B;
a=C(1,1);
b=C(2,1);

/*
using binomial theorem
xy=ax+by
y=ax/(x-b)
y=-a/b(x+x^2/b+x^3/2b^2)
*/
Y=-a/b*(x+x^2/b+x^3/(2*b*b));

plot2d(x,Y);
