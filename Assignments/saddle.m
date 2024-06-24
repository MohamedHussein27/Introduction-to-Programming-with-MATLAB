function indices = saddle(M)
s=size(M);
r=s(1);
c=s(2);
N(r,c)=0;
for i = 1:r
    for j = 1:c
        N(i,j)=NaN;
    end
end
for i = 1:r
    maxi=max(M(i,:));
        for j = 1:c
           if M(i,j)==maxi
            N(i,j)=maxi;
           end
        end
end
N
count=0;
saddle_points(r,c)=0;
for i = 1:r
    for j = 1:c
        saddle_points(i,j)=NaN;
    end
end
for jj = 1:c
    for ii = 1:r
        count=0;
        if ~isnan(N(ii,jj))
            maxii=N(ii,jj);
            for iii = 1:r
              if maxii<=M(iii,jj)
                count=count+1;
              end
            end
            if count == r
                break;
            end
        end
    end
    if count==r
        saddle_points(ii,jj)=maxii;
    end
    count=0;
end
saddle_points
if c ==1
    for i = 1:r
        for j = 1:c
            if ~isnan(saddle_points(i,j))
                special_num=saddle_points(i,j);
                special_r=i+1;
            end
        end
    end
    for i = special_r:r
        for j = 1:c
            if M(i,j)==special_num
                for jj = 1:c
    for ii = special_r:r
        count=0;
        if ~isnan(N(ii,jj))
            maxii=N(ii,jj);
            for iii = 1:r
              if maxii<=M(iii,jj)
                count=count+1;
              end
            end
            if count == r
                break;
            end
        end
    end
    if count==r
        saddle_points(ii,jj)=maxii;
    end
    count=0;
                end
            end
        end
    end
end
saddle_points
counting=0;
for i = 1:r
    for j = 1:c
        if ~isnan(saddle_points(i,j))
            counting=counting+1;
        end
    end
end
if counting == 0
    indices=[];
else
counter=0;
for i = 1:r
    for j = 1:c
        if ~isnan(saddle_points(i,j))
            counter=counter+1;
        end
    end
end
indices(counter,2)=0;
[row,col] = find(~isnan(saddle_points),counter)
for i = 1:counter
    indices(i,1)=row(i);
    indices(i,2)=col(i);
end
if M == 0
    multiple=r*c;
    for i = 1:r
        for j = 1:c
           saddle_points(i,j)=0;
        end
    end
    [row,col]=find(saddle_points==0,multiple)
for i = 1: multiple
    indices(i,1)=row(i);
    indices(i,2)=col(i);
end
end
end




