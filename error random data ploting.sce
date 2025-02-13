a=0;b=0;
y=[2.198,2.197,2.1948,2.230,2.198,2.202,2.1966];
x=[1 2 3 4 5 6 7 ]; 
y1=[2.205 2.205 2.205 2.205 2.205 2.205 2.205];
y2=[2.193 2.193 2.193 2.193 2.193 2.193 2.193];
un=[0.001 0.005 0.0010 0.004 0.002 0.003 0.0020];


for i=1:7
    a=a+y(i)/(un(i))^2;
    b=b+1/(un(i))^2;
   
end
wm=a/b;
e_wm=sqrt(1/b);
printf("weighted mean= %.4f\nErron in weighted mean=%.4f",wm,e_wm);
printf("\n\nThe best value of the lifetime of muon is %.4f ± %.4f",wm,e_wm);

plot2d(x,y,-4,rect=[-1,2.18,8,2.230]);
plot2d(x,y1,3);
plot2d(x,y2,6);

errbar(x,y,un,un);
