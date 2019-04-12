function xa=ramp1(tt)
     for i=1:length(tt)
         if(tt(i)>=0)
            xa(i)=tt(i);
          else
         xa(i)=0;
         end
     end
 end