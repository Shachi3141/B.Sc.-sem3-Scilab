//question1
//finding uncertainity associtead with y

v0=4.0;
v0u=0.2;
t=0.60;
tu=0.06;
g=9.8;
c=1/2*g
y=v0*t-c*t*t;
y1u=sqrt((v0u/v0)^2+(tu/t)^2)*v0*t;
y2u=c*sqrt((2*tu/t)^2)*t*t;
yu=sqrt((y1u)^2+(y2u)^2)*y;
disp(y);
disp(yu, "is the uncertainity in y");
