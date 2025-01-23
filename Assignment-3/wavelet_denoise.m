function [denoised_sig, RMSE] = wavelet_denoise(original_signal, signal, thresh, wavelet, name)

    % Function: denoising signal using wavelet coefficient suppression.
    % Inputs:
    % original_signal - signal before adding noise
    % signal - the noisy signal
    % thresh - selected threshold of noise in wavelet coefficients from observation
    % wavelet - string input of the wavelet name used
    % name - tag for displaying in figures

    % Outputs:
    % Denoised signal: Reconstructed signal after removing the thresholded noise from wiener
    % coefficients
    % RMSE: RMSE between the denoised and original signal

    [C, L] = wavedec(signal, 10, wavelet); % Calculates wavelet coefficients and the lengths at each level.
    
    % Compute the magnitude of coefficients
    coeff_magnitudes = abs(C);

    % Sort in descending order
    sorted_coeffs = sort(coeff_magnitudes, 'descend');

    % Plot the magnitudes
    figure;
    stem(sorted_coeffs, 'Marker', 'none');
    title(['Magnitude of Wavelet Coefficients in Descending Order in ',name]);
    xlabel('Coefficient Index');
    ylabel('Magnitude');
    
    % Choose a threshold based on observation
    threshold = thresh; 
    %threshold = 1;
    % Suppress coefficients below the threshold
    C_thresholded = C;
    C_thresholded(abs(C) < threshold) = 0;

    % Reconstruct the denoised signal
    denoised_sig = waverec(C_thresholded, L, wavelet);

    % Plot original vs denoised signal
    figure;
    plot(original_signal, 'b', 'DisplayName', 'Original Signal');
    hold on;
    plot(denoised_sig, 'r', 'DisplayName', 'Denoised Signal');
    legend;
    title(['Original vs. Denoised Signal in ', num2str(name)]);
    xlabel('Sample Index');
    ylabel('Amplitude');
    
    % calculates RMSE between the denoised and original signal
    RMSE = sqrt(mean((denoised_sig - original_signal).^2));

end