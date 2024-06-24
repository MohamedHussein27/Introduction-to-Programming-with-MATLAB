function valid = valid_date (year,month,day)
if ~isscalar(year) || year<=0 || year ~=fix(year)
    valid= false;
elseif  ~isscalar(month) || month<=0 || month ~=fix(month) || month >12
    valid= false;
elseif  ~isscalar(day) || day<=0 || day ~=fix(day) || day >31
    valid = false;
else
    if (year/4)-floor(year/4)==0 && ~((year/100)-floor(year/100)==0)
        if month ==2 && (day==30 || day ==31)
            valid = false;
      
        elseif month ==4 && day ==31
            valid = false;
        
        elseif month == 6 && day ==31
             valid = false;
        
        elseif month == 9 && day ==31
             valid = false;
        
        elseif month == 11 && day ==31
             valid = false;
        else
            valid = true ;
    
        end
    end
    if (year/4)-floor(year/4)~=0
        if month ==2 && (day==30 || day ==31 || day == 29)
            valid = false;
        elseif month ==4 && day ==31
            valid = false;
        
        elseif month == 6 && day ==31
             valid = false;
        
        elseif month == 9 && day ==31
             valid = false;
        
        elseif month == 11 && day ==31
             valid = false;
        else
            valid = true ;
    
        end
    end
    if (year/4)-floor(year/4)==0 && (year/100)-floor(year/100)==0 && (year/400)-floor(year/400)==0
         if month ==2 && (day==30 || day ==31)
            valid = false;
        elseif month ==4 && day ==31
            valid = false;
        
        elseif month == 6 && day ==31
             valid = false;
        
        elseif month == 9 && day ==31
             valid = false;
        
        elseif month == 11 && day ==31
             valid = false;
        else
            valid = true ;
    
        end
    end
    if (year/4)-floor(year/4)==0 && (year/100)-floor(year/100)==0 && ~((year/400)-floor(year/400)==0)
         if month ==2 && (day==30 || day ==31 || day ==29)
            valid = false;
        elseif month ==4 && day ==31
            valid = false;
        
        elseif month == 6 && day ==31
             valid = false;
        
        elseif month == 9 && day ==31
             valid = false;
        
        elseif month == 11 && day ==31
             valid = false;
        else
            valid = true ;
    
         end
    end
end
