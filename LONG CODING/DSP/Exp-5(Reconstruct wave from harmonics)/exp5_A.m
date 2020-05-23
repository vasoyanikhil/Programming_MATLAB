%NAME: Jadeja Jaydevsinh G.
%ROLL NO: 12MEC07
%BATCH: ME-1st sem,2012
%DEPARTMENT: ELectronics & Communication.
%SUBJECT: DSP

% reconstruct a squarewave using the following  harmonics
%  1,3,7,15,31,101

clc
clear
a=[1 3 7 15 31 101]; % list of all harmonics for making a loop
for i=1:6
figure(i);
t=-1.5:0.005:1.5;
T=1;
w=2*pi/T;
x=zeros(1,length(t));  % blank array
for k=1:a(i)
x=x+(sin((2*k-1)*w*t))/(2*k-1);  % adding the harmonics for given times
end
ak=(4/pi)*x;
plot(ak);xlabel('t');ylabel('x(t)')
title(['Reconstruction square wave from ',num2str(a(i)),' component'])
end

%######################### END OF CODE #################################