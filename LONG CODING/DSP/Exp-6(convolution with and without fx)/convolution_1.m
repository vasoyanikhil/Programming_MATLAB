clc;
clear;
x=input('Enter the first sequence: ');
y=input('Enter the second sequence: ');
display(' ');
display('                 Convolution with function:');
convolution_ans1=conv(x,y)





lx=length(x);
ly=length(y);
con_l=lx+ly-1;
x=[x zeros(1,con_l-lx)];
y=[y zeros(1,con_l-ly)];
for i=1:con_l
    con(i)=0;
    for j=1:i 
       con(i)=con(i)+(x(j)*y(i-j+1));
    end
end
display('                 Convolution with out function:');
convolution_ans2=con

subplot(311);stem(x);title('x(n)');
subplot(312);stem(y);title('h(n)')
subplot(313);stem(convolution_ans2);title('y(n)')
