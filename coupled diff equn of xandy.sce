// Define the differential equations
deff('[dx,dy] = f(x,y,a,b,c,d)','dx = a*x + b*y; dy = c*x + d*y;');

// Define initial conditions
[x0,y0]=(1,2)
//x0 = 1;
//y0 = 2;
t0=1;
// Define parameter values
a = -1;
b = 0.5;
c = 1;
d = -2;

// Define time range and step size
t = 0:0.1:20;

// Solve the differential equations using the ode() function
x = ode(x0,t0,t,f);
y = ode(y0,t0,t,f);

// Plot the solution on the xy plane
plot(x,y);
xlabel('x');
ylabel('y');
