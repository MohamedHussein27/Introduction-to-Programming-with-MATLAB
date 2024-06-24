function A = trio(n,m)
x(3*n,m)=0;
x(1:n,:)=1;
x((n+1):2*n,:)=2;
x((2*n+1):3*n,:)=3;
A=x;