clc;
clear;
close all;
x=input('enter the seq:');
xh=input('seq location high:');
xl=input('seq location low:');
h=input('enter the seq:');
hh=input('seq location high:');
hl=input('seq location low:');
s=xh+hh;
t=xl+hl;
n=s:t;
subplot(4,1,1);
a=length(x);
subplot(4,1,2);
stem(x);
b=length(h);
subplot(4,1,3);
stem(h);
d=a+b-1;
X=[x zeros(1,d-a)];
Y=[h zeros(1,d-b)];
for i=1:d
      con(i)=0;
        for j=1:i
          con(i)=con(i)+(X(j)*Y(i-j+1));
        end
end
subplot(4,1,4);
ans=con
stem(ans);
        
    