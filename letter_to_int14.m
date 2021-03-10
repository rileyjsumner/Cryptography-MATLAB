function int_value = letter_to_int14(x)
% 
% Modified here for the specific Z_11 example used in lecture of 19Feb2021
    int_value=double(x)-65*ones(size(x)); % for Z_26 case
% int_value=double(x)-32*ones(size(x)); % for Z_96 case
    for ii=1:length(x)    
        if (int_value(ii)==0) 
            int_value(ii)=1;
        elseif (int_value(ii)==1) 
            int_value(ii)=2;
            disp(ii);
        elseif (int_value(ii)==2) 
            int_value(ii)=3;    
        elseif (int_value(ii)==3) 
            int_value(ii)=4;    
        elseif (int_value(ii)==4) 
            int_value(ii)=5;    
        elseif (int_value(ii)==5) 
            int_value(ii)=6;    
        elseif (int_value(ii)==6) 
            int_value(ii)=7;    
        elseif (int_value(ii)==7) 
            int_value(ii)=8;    
        elseif (int_value(ii)==8) 
            int_value(ii)=9;    
        elseif (int_value(ii)==12) 
            int_value(ii)=10;    
        elseif (int_value(ii)==13) 
            int_value(ii)=11;    
        elseif (int_value(ii)==17) 
            int_value(ii)=12;    
        elseif (int_value(ii)==18) 
            int_value(ii)=13;    
        elseif (int_value(ii)==19) 
            int_value(ii)=14;    
        end
    end
end