function xa=ramp_step(tt)
     for i=1:length(tt)
         if(tt(i)>=2)
            xa(i)=tt(i)+1;
         elseif(tt(i)>=0)
                xa(i)=1;
          else
         xa(i)=0;
         end
     end
 end