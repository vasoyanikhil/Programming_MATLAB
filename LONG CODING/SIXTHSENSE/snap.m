clc;
clear all;
echo on
imaqhwinfo
pause
imaqhwinfo('winvideo',1);
pause
vid=videoinput('winvideo',1,'YUY2_640x480');
pause
preview(vid);
pause
rgb_image = getsnapshot(vid);
pause
imwrite(rgb_image,'one.jpg');




