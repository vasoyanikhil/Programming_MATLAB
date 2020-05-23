function [Xk] = dft1(xn,N)
L = length (xn);
if (N<L)
error ('Nmust be > =L')
end 
x1=[xn zeros(1,N-L)];
for k = 0:1:N-1;
for n = 0:1:N-1;
p = exp (-i*2*pi*n*k/N);
x2(k+1,n+1) =p;
end
end 
Xk = x1*x2.';
end
