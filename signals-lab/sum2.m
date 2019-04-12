function x1=sum2(tt,m)
     for i=1:length(tt)
         x = 0;
         for j = 1:m
             if(i>j)
                x = x+tt(i-j);
             else
                 x = x+0;
             end
         end
            x1(i)=(x)/m;
     end
 end