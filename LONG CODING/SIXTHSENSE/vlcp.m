 clear all;
 clc % Clearing Matlab desktop
vid=videoinput('winvideo',1,'YUY2_640x480'); % Defining the video input object
set(vid,'FramesPerTrigger',1); % Setting frames per trigger
rgb_image = getsnapshot(vid); % Storing Image in an array variable
[a b c]= size(rgb_image); % Determining the size of the captured frame.
y=a;
x=b;
% Defining Boundaries
x1=x/2-120;
x2=x/2+120;
y1=y/2-30;
y2=y/2+30;
  fig1=figure;
vlc=actxcontrol('VideoLAN.VLCPlugin.2',[50 50 700 500],fig1);
disp(vlc.versionInfo());
vlc.BaseURL = 'file://d:/pkp.mp3';  %%%%write ur file location over here
vlc.playlist.add('d:/1.mp4');     %%%%write ur file location over here
vlc.playlist.items.get;
while(1)
image = getsnapshot(vid); % storing image in an array variable
flushdata(vid); %Flushing the buffer
 rgb_image=ycbcr2rgb(image);
rbar=0;
cbar=0;
e=0;
fR=rgb_image(:,:,1);fG=rgb_image(:,:,2);fB=rgb_image(:,:,3);% Storing RGB components of the image in seperate arrays
% I=((fR<=30) & (fG<=30) & (fB>=30)); % Converting the RGB Image into binary image///Detecting only the red component
I=fR>200;

% Following are the steps For Detecting the red ball
se=strel('disk',5);
B=imopen(I,se);
final=imclose(B,se);
[L,n]=bwlabel(final);
imshow(L);

for k=1:n
[r,c]=find(L==k);
rbar=mean(r);
cbar=mean(c);
%plot(cbar,rbar,'Marker','*','MarkerEdgeColor','B' ,'MarkerSize',20) %////THIS IS TO BE USED ONLY WHILE TESTING
e=(((cbar>=x1)*2*2*2) + ((cbar<=x2)*2*2) + ((rbar>=y1)*2) + (rbar<=y2)); % Converting to decimal number
end
% Decision Making Conditions
switch (e)

case 13
disp('Play Song');
vlc.playlist.play();

otherwise
disp('Stop Song');
vlc.playlist.stop();
end
end
%fclose(ser); % closing 