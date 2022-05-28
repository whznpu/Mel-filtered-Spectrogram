function mids = computeMids(freqs, edges)

[m,n]=size(edges);
mids=zeros(m,n);
mids(1)=1;
mids(1,end)=edges(1,end);


err=[];
j=2;
err_old=9999;
for i=1:length(freqs)-1
    err_l_new=edges(j)-freqs(i);
    err_h_new=edges(j)-freqs(i+1);
    if err_l_new<0 & err_h_new<0
        continue;
    elseif err_l_new*err_h_new<0
        if abs(err_l_new)>abs(err_h_new)
            err(j)=freqs(i+1);
            
            j=j+1;
        elseif abs(err_l_new)<=abs(err_h_new) 
            err(j)=freqs(i);
           ;
            j=j+1;
        end
        
    elseif err_l_new>0 & err_h_new>0
        continue;
        
    end
%     if j>=length(edges)
%         break;
%     end
%     
    
end
mids
err

mids(2:end-1)=err(2:end);


end