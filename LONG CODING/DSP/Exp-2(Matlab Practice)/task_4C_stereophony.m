clear;
[x, Fs]=wavread('i can do.wav');
left=x;
right=x;
left(:,2)=0;
right(:,1)=0;
subplot(311);plot(x);title('Original file');
subplot(312);plot(left);title('Only Left channel');
subplot(313);plot(right);title('Only Right channel');

%play the output
wavplay(x,Fs);  % original file

wavplay(left,Fs); % left channel sound
wavplay(right,Fs); % right channel

% write the output file
wavwrite(left,Fs,'left_channel');
wavwrite(right,Fs,'right_channel');
