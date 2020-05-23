clc;
close all;
clear;

x=imread('cameraman.tif');
subplot(1,2,1);
imshow(x);
title('colour image');
b=1:256;
n=1:256;
for k=1:256
    for i=1:256
      for j=1:256
          if(x(i,j)==k)
              b(k)=b(k)+1;
          end
      end
    end
   
   
end
subplot(1,2,2);
stem(n,b);    
   


        
