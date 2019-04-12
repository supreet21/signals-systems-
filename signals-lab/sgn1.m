function x5=sgn1(tt)
    for i=1:length(tt)
        if(tt(i)<0)
            x5(i)= -1;
        elseif(tt(i)==0)
                x5(i) = 0;
        else
                x5(i) = 1;
                
        
    end
end