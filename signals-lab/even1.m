function xa=even1(tt)
l = length(tt);
     for i=1:length(tt)
            xa(i)=(tt(i)+tt(l-i+1))/2;
     end
 end