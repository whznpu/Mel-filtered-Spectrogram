function edges = melfreqs(fmin, fmax, k)

mel_fmin=mel(fmin);
mel_fmax=mel(fmax);


mel_equal=linspace(mel_fmin,mel_fmax,k+2);

edges=arcmel(mel_equal);


end
