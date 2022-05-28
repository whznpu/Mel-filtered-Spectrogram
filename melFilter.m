function melSpec = melFilter(spec, H)
spec=abs(spec);

melSpec=H*spec;
end
