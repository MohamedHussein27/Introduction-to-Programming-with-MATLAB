function distance = get_distance(in1,in2)
[~,~,raw] = xlsread('Distances.xlsx');
[r1,c1] = find(strcmp(raw,in1));
[r2,c2] = find(strcmp(raw,in2));
if isempty(r1) && isempty(c1)
    distance=-1;
    return
end 
row=r1(1);
if isempty(r2) && isempty(c2)
    distance=-1;
    return
end
cou=r2(1);
distance = raw{row,cou};
end
