clc;
clear all;
echo on
imaqhwinfo
pause
imaqhwinfo('winvideo',1);
pause
a=videoinput('winvideo',1);
pause
preview(a);





