function [summa,index]= max_sum(v,n)
if n>length(v)
    summa = 0;
    index=-1;
else
    w=[];
    sum=0;
    for i = 1:length(v)-n+1
        for j =i:n-1+i
            sum=sum+v(j);
        end
        w=[w,sum];
        sum=0;
    end
    [summa,index] = max(w);
end
