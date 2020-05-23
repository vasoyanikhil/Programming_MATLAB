clc;
clear;
a=input('enter the value:-  ');
x=[1 1];
for i=3:a
    x=[x (x(i-2)+x(i-1))];
end
x