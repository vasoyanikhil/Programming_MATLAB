clc;
close all;
clear all;

x=imread('cameraman.tif');
subplot(3,3,1);
imshow(x);
title('colour image');

for i=1:256
    for j=1:256
        y(j,i)=x(257-i,j);
    end
end

subplot(3,3,2);
imshow(y);
title('rotate 90 degree');

for i=1:256
    for j=1:256
        z(j,i)=y(257-i,j);
    end
end

subplot(3,3,3);
imshow(z);
title('rotate 180 degree');

for i=1:256
    for j=1:256
        w(j,i)=z(i,257-j);
    end
end

subplot(3,3,4);
imshow(w);
title('rotate 270 degree');

for i=1:256
    for j=1:256
        c(i,j)=x(i,257-j);
    end
end

subplot(3,3,5);
imshow(c);
title('mirror image');






