clc;
close all;
clear;

x=imread('cameraman.tif');
subplot(1,3,1);
imshow(x);

y=imresize(x, 0.5);
subplot(1,3,2);
imshow(y);
size(y)

for i=1:32
    for j=1:32
        v(i,j)=x(8*i,8*j);
    end
end
subplot(1,3,3);
imshow(v);

for i=1:2:512
    for j=1:2:512
        c(i,j)=x((i+1)/2,(j+1)/2);
    end
end
figure(4);
%subplot(1,3,3);
imshow(c);

for i=1:4:1024
    for j=1:4:1024
        d(i,j)=x((i+4)/2,(j+4)/2);
    end
end
figure(5);
%subplot(1,3,3);
imshow(d);





