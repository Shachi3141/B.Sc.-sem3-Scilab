/*find out the solution for the set of linear equation given below
    5x-331y=3.5
    6x-397y=5.2
    */
a=[5 -331;6 -397];
b=[3.5;5.2];
if det(a)!=0
   c=inv(a)*b;
   
   else
    disp("solu tion not possible!") 
end
disp("value of x and y",c(1,1),c(2,1));
