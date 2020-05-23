clc;
clear;
x=input('Enter the first sequence: ');
y=input('Enter the second sequence: ');
display(' ');
display('                 Correlation with function:');
correlation_ans1=xcorr(x,y)
subplot(311);stem(x);title('x1(n)');
subplot(312);stem(y);title('x2(n)')
subplot(313);stem(correlation_ans1);title('y(n)')

%with out function

lx=length(x);
ly=length(y);
cor_l=lx+ly-1;
x=[x zeros(1,cor_l-lx)];
y=[zeros(1,cor_l-ly) y];
for i=1:cor_l
    cor(i)=0;
    for j=1:i 
       cor(i)=cor(i)+(x(j)*y(cor_l-i+j));
    end
end
display('                 Correlation with out function:');
correlation_ans2=cor

