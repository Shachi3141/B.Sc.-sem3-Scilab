/*write a program in scilab to evaluate the vloume and surface area of parallelepiped along with their respective uncertainties */
//a=10+-2;b=6+-1.5;c=2+-0.5
a=10;
b=6;
c=2;
da=2;
db=1;
dc=0.5;
p=a*b;
q=b*c;
r=c*a;
V=a*b*c;//volume of parallelepiped
A=2*(p+q+r);//surface area
dV=V*sqrt((da/a)^2+(db/b)^2+(dc/c)^2);
dp=p*sqrt((da/a)^2+(db/b)^2);
dq=q*sqrt((db/b)^2+(dc/c)^2);
dr=r*sqrt((dc/c)^2+(da/a)^2);
dA=2*sqrt((dp)^2+(dq)^2+(dr)^2);
printf("volume=%f \n",V);
printf("volume=%f \n",A);
printf("error in volume=%f\n",dV);
printf("error in area=%f \n",dA);
printf("volume=%f pm %f \n",V,dV);
printf("area=%f pm %f \n",A,dA);
printf("[pm=plus minus]");
