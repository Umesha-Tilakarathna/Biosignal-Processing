function [snr_db] = snr_with_noisy_signal(signal,noisy_signal)
  

    estimated_noise = noisy_signal - signal;
    
    signal_power = mean(signal.^2);
    noise_power = mean(estimated_noise.^2);

    snr = signal_power / noise_power;

    snr_db = 10 * log10(snr);
end