function xe=step1(tt)
     for i=1:length(tt)
         if(tt(i)>=0)
            xe(i)=1;
          else
         xe(i)=0;
         end
     end
 end