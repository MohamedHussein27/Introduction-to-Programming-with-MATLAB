function matrix = sparse2matrix(cellvec)
sizer = cellvec{1}(1,1);
sizec = cellvec{1}(1,2); 
default = cellvec{2};
matrix(sizer,sizec)= 0;
for j = 1:sizer
    for k = 1:sizec
        matrix(j,k)=default;
    end
end
for i=3:length(cellvec)
    matrix(cellvec{1,i}(1,1),cellvec{1,i}(1,2))=cellvec{1,i}(1,3);
end
end

