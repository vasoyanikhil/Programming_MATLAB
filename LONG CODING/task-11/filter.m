clc;
close all;
clear;

x=imread('vasoya nikhil.png');
subplot(1,4,1);
imshow(x);
title('simple image')

x=double(x);
for i=2:255
    for j=2:255
        v(i,j)=max([x(i,j)+x(i,j-1)+x(i,j+1)+x(i+1,j-1)+x(i+1,j)+x(i+1,j+1)+x(i-1,j+1)+x(i-1,j)+x(i-1,j-1)]/9);
    end
end
v=uint8(v);
subplot(1,4,2);
imshow(v);
title('Max filter')


for i=2:255
    for j=2:255
        g(i,j)=min([x(i,j)+x(i,j-1)+x(i,j+1)+x(i+1,j-1)+x(i+1,j)+x(i+1,j+1)+x(i-1,j+1)+x(i-1,j)+x(i-1,j-1)]/9);
    end
end
g=uint8(g);
subplot(1,4,3);
imshow(g);
title('Min filter')

for i=2:255
    for j=2:255
        h(i,j)=median([x(i,j)+x(i,j-1)+x(i,j+1)+x(i+1,j-1)+x(i+1,j)+x(i+1,j+1)+x(i-1,j+1)+x(i-1,j)+x(i-1,j-1)]/9);
    end
end
h=uint8(h);
subplot(1,4,4);
imshow(h);
title('Median filter')
