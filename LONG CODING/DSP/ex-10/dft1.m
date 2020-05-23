function [nikhil] = dft1(X,N )
%DFT1 Summary of this function goes here
%   Detailed explanation goes here
 l=length(X);
 x=[X zeros(1,N-l)];
 for k=0:N-1
     for n=0:N-1
         w(k+1,n+1)=exp(-j*2*pi*k*n/N);
     end
 end
 nikhil=x*w;

end

