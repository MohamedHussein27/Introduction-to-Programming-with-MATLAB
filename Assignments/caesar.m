function coded = caesar(in,amount)
amounted=double(in)+amount;
for i=1:length(amounted)
    while amounted(i)>126
        diff=amounted(i)-126;
        amounted(i)=32+diff-1;
    end
    while amounted(i)<32
        diffplus=32-amounted(i);
        amounted(i)=126-diffplus+1;
    end
end
coded=char(amounted);
end

