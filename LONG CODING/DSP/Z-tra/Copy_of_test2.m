%Analysis of Z-Transforms %Definition of numerators and denominator
%coefficients 
clc
clear
close all;
disp('Enter any array in square bracket like [1 2 3 4]');
num=input('Enter the numerator:  ') 
den=input('Enter the Denomrnator:   ')
%Conversion from rational to Factored form 
%[z,p,k]=tf2zp(num,den); 
%disp('Zeros are at');disp(z); 
%disp('Poles are at');disp(p); 
%disp('Gain Constant');disp(k); 
%Determination of radius of the poles 
%radius=abs(p); 
%disp('Radius of the poles');disp(radius); 
%Pole Zero Map using numerator and denominator coefficients 
zplane(num,den) 
