function [mse_val] = mse(signal1, signal2)

% returns MSE of signal. 
% signal 1 is the filtered signal with lesser no. of samples after
% compensating for delay
% signal 2 is the reference signal

    signal2_cropped = signal2(1:length(signal1));
    mse_val = sum((signal1 - signal2_cropped).^2)/length(signal1);
    
end
