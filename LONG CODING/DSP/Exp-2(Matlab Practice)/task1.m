function [mean_val median stdev  ] = task1(y)

x=randperm(y);
Ascending_order=sort(x);
mean_val= mean(x);
median=Ascending_order(ceil(length(x)/2));
stdev=std(x);

end


%write in command window like     [x y z]=task1(21)

