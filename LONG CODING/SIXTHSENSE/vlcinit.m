clc;
clear all;
echo on
fig1=figure;
pause
vlc=actxcontrol('VideoLAN.VLCPlugin.2',[50 50 700 500],fig1);
pause
disp(vlc.versionInfo());
pause
vlc.BaseURL = 'file://d:/final.mp4';  %%%%write ur file location over here
pause
vlc.playlist.add('d:/final.mp4');     %%%%write ur file location over here
pause
vlc.playlist.items.get;
pause
vlc.playlist.play();