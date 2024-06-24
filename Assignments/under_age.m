function r = under_age(age,limit)
if nargin == 2
    if age < limit 
        r = true;
    else 
        r = false;
    end
elseif nargin<2
    limit = 21;
    if age < limit 
        r = true;
    else
        r = false;
    end
end
end