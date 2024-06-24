function charnum=char_counter(fname,character)
fid=fopen(fname,'rt');
if fid<0
    charnum = -1;
    return
end
if ischar(character)
oneline=fgets(fid);
sum=0;
while ischar(oneline)
    sum=sum+length(strfind(oneline,character));
    oneline=fgets(fid);
end
charnum = sum;
fclose(fid);
else
    charnum = -1;
end
end


