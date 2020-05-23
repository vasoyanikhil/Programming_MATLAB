clear all;
clc;
%echo on 
a=videoinput('winvideo',1,'RGB24_640x480');

p = getsnapshot(a);

[g h c]=size(p);

y=g;
x=h;

x1=x/2-120;
x2=x/2+120;
y1=y/2-30;
y2=y/2+30;

%echo off
%ser=serial('COM10');
%fopen(ser);
pause(5);
while(1)
    p=getsnapshot(a);
    flushdata(a);
    %rgb_image=ycbcr2rgb(image);
    rbar=0;
    cbar=0;
    e=0;
    l=p(:,:,1);
    m=p(:,:,2);
    n=p(:,:,3);
    i=((l>=0)&(l<=24)&(m>=38)&(m<=208));%&(FB>=101)&(FB<=255));
    se=strel('disk',5);
    b=imopen(i,se);
    final=imclose(b,se);
    [L,n]=bwlabel(final);
    imshow(L);
    imshow(L);
    for k=1:n
        [r,c]=find(L==k);
        rbar=mean(r);
        cbar=mean(c);
        e=(((cbar>=x1)*2*2*2) + ((cbar<=x2)*2*2) + ((rbar>=y1)*2) + (rbar<=y2));%5,13,9,7,15,11,6,14,10;
        
    end
    switch(e)
        case 5
         disp('MOVE LEFT');
       %  fwrite(ser,'L');
        case 6
         disp('MOVE left');
        % fwrite(ser,'L');
        case 7
         disp('MOVE LEFT');
        % fwrite(ser,'L');
         case 9
         disp('MOVE right');
        % fwrite(ser,'R');
         case 10
         disp('MOVE right');
        % fwrite(ser,'R');
         case 11
         disp('MOVE right');
        % fwrite(ser,'R');
         case 13
         disp('MOVE fwd');
         %fwrite(ser,'F');
         case 14
         disp('MOVE bekword');
        % fwrite(ser,'B');
        otherwise
            disp('stop moving');
         %   fwrite(ser,'S');
    end
end
fclose(ser);
