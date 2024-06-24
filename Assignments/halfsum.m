function summa = halfsum(A)
[row, col]=size(A);
summa=0;
for r = 1:row
    for c = r:col
        summa=summa + A(r,c);
    end
end
end
