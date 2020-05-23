%NAME: Jadeja Jaydevsinh G.
%ROLL NO: 12MEC07
%BATCH: ME-1st sem,2012
%DEPARTMENT: ELectronics & Communication.
%SUBJECT: DSP

%compare a reconstructed waveform for k=31 for the following signal

clc
clear
a=31;
t=-1.5:0.005:1.5;
T=1;
w=2*pi/T;

% square wave generator
figure(1)
x=zeros(1,length(t));
for k=1:a
x=x+(sin((2*k-1)*w*t))/(2*k-1);
end
ak=(4/pi)*x;
plot(ak);xlabel('t');ylabel('x(t)')
title(['Reconstruction of square wave from ',num2str(a),' component'])

% tringular waveform generator
figure(2)
x=zeros(1,length(t));
for k=1:a
x=x+( ((-1)^k) *(sin((2*k-1)*w*t) / ((2*k-1)^2) ));
end
ak=(8/(pi^2))*x;
plot(ak);xlabel('t');ylabel('x(t)')
title(['Reconstruction of tringular wave from ',num2str(a),' component'])

% right sawtooth waveform generator
figure(3)
x=zeros(1,length(t));
for k=1:a
x=x+(((-1)^(k))*sin(k*w*t)/k);
end
ak=(2/pi)*x;
plot(ak);xlabel('t');ylabel('x(t)')
title(['Reconstruction of right sawtooth wave from ',num2str(a),' component'])

% Half wave generator
figure(4)
x=zeros(1,length(t));
for k=1:a
x=x+sin(w*t+k);
end
y=find(x<0);
i=1:length(y);
x(y(i))=0;
ak=x;
plot(ak);xlabel('t');ylabel('x(t)')
title(['Reconstruction of Half wave from ',num2str(a),' component'])




