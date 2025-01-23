function [wavelet] = mexican_hat_wavelet(t,s)

    % Wavelet - returns the wavelet function
    % t - input time array
    % s - scaling factor of the wavelet. Should be a positive value
    
    wavelet = (1/sqrt(s)) * (2/(sqrt(3)*(pi^0.25))) * (1-(t/s).^2) .* exp(-0.5* (t/s).^2);
    
end