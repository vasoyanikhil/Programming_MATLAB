clc;                 %cler screen

clear all            %clear variablex

x=1:1:10;            %array 1 to 10

x=x';                %tanspose array

y=2:2:20;            %even value

x=5:5:50;            %no divisible by 5

linspace(0,1,5);     %0 to 1 part equal space

randperm(50);        %random  value 1 to 50

mod(ans,2);

find(ans==0);       %even value

find(ans==1);        %odd value


%ascending & desending order
randperm(50);

sort(ans);

sort(ans,'descend');

%greater then 10

randperm(50);

find(ans>10);

find(ans<10);  %less then 10

%divisible by 3

randperm(50);

mod(ans,3);

find(ans);

%reverse arry

randperm(50);

wrev(ans);

%add 50 zeros

randperm(50);

a=zeros(1,10);

y=[ans a];

%replace no divided 5 by 0

a=randperm(50);
 
b=mod(a,5);

c=find(b==0);

a(c)=0;

%remove all the no divisible by 5&3

a=randperm(50);

b=mod(a,5);

c=find(b>0);

d=a(c);

e=mod(d,3);

f=find(e>0);

g=d(f);

