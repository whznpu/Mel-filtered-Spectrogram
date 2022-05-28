function H = computeFilter(mids, freqs)
[~,k]=size(mids);
k=k-2;
k
for t=2:k+1
    for i=1:length(freqs)
        if freqs(i)<mids(t-1)
            H(t-1,i)=0;
        elseif freqs(i)>=mids(t-1)&freqs(i)<mids(t)
            H(t-1,i)=2*(freqs(i)-mids(t-1))/((mids(t+1)-mids(t-1))*(mids(t)-mids(t-1)));
        elseif freqs(i)>=mids(t)&freqs(i)<mids(t+1)
            H(t-1,i)=2*(mids(t+1)-freqs(i))/((mids(t+1)-mids(t-1))*(mids(t+1)-mids(t)));
        elseif freqs(i)>=mids(t+1)
            H(t-1,i)=0;
        end
            
    end
end
