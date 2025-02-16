x=[1 3 5 7 10 12 13 16 18 20];

y=[4 5 6 5 8 7 6 9 12 11];
//disp(length(x),length(y));
sumx=0;
sumy=0;
sumxy=0;
sumx2=0;
n=length(y);
for i=1:n
    sumx=sumx+x(i);
    sumy=sumy+y(i);
    sumxy=sumxy+x(i)*y(i);
    sumx2=sumx2+x(i)*x(i);
    
end
a1=((n*sumxy)-(sum(x)*sum(y)))/((n*sumx2)-(sumx)^2);
//disp(a1);
a0=(sumy-(a1*sumx))/n;
//disp(a0);
for i=1:n
 y1(i)=a1*x(i)+a0;  
end
//disp(y1);//new points
plot((x,y,'xr'),(x,y1,'b'));
xgrid(1);
xlabel("x---->","fontsize",4);
ylabel("y---->","fontsize",4);
title("plot x vs y","fontsize",6);
h1=legend(["unfitted data","fitted curve a0+a1x"],5);//if u want to give mathemathical exp. u can use latex($....$) inside"" .


