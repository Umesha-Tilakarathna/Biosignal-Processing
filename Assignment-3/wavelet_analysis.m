function [A_10, D_10,D_9,D_8,D_7,D_6,D_5,D_4,D_3,D_2,D_1, reconstructed_signal] = wavelet_analysis(signal, wavelet, name)
    
    
    % Perform wavelet decomposition for 10 levels
    
    % Inputs:
    %   signal - the input signal
    %   wavelet - wavelet type (e.g., 'db9' or 'haar')
    
    % Outputs:
    %   A_10 - approximation coefficients at level 10
    %   D_10 to D_1 - from levels 10 to 1
    %   reconstructed_signal - reconstructed signal using IDWT
    
    
    [C,L] = wavedec(signal,10,wavelet);

    [A_10] = appcoef(C, L, wavelet, 10);
    [D_10,D_9,D_8,D_7,D_6,D_5,D_4,D_3,D_2,D_1] =  detcoef(C, L, [1 2 3 4 5 6 7 8 9 10]);
    
    % Reconstructing the signals using wavelet coefficients
    
    A10 = wrcoef('a', C, L, wavelet, 10);
    D10 = wrcoef('d', C, L, wavelet, 10);
    D9  = wrcoef('d', C, L, wavelet, 9);
    D8  = wrcoef('d', C, L, wavelet, 8);
    D7  = wrcoef('d', C, L, wavelet, 7);
    D6  = wrcoef('d', C, L, wavelet, 6);
    D5  = wrcoef('d', C, L, wavelet, 5);
    D4  = wrcoef('d', C, L, wavelet, 4);
    D3  = wrcoef('d', C, L, wavelet, 3);
    D2  = wrcoef('d', C, L, wavelet, 2);
    D1  = wrcoef('d', C, L, wavelet, 1);
    
    reconstructed_signal = A10 + D10 + D9 + D8 + D7 + D6 + D5 + D4 + D3 + D2 + D1;
    
    % Plotting the coefficients in stem plots (11x1 subplot)
    name_string1 = ['Approximation and Detail Coefficients of ', name];
    
    figure('Name', name_string1);
    
    
    coefficients = {A_10, D_10, D_9, D_8, D_7, D_6, D_5, D_4, D_3, D_2, D_1};
    titles = {'A_{10}', 'D_{10}', 'D_{9}', 'D_{8}', 'D_{7}', 'D_{6}', 'D_{5}', 'D_{4}', 'D_{3}', 'D_{2}', 'D_{1}'};

     for i = 1:11
        subplot(11, 1, i);
        stem(coefficients{i}, 'Marker', 'none');
        title(titles{i});
        axis tight;
% 
%         % Set Y-limits based on data range
%         minVal = min(coefficients{i});
%         maxVal = max(coefficients{i});
%         if minVal == maxVal
%             % Set a small default range if all values are the same
%             ylim([minVal - 1, maxVal + 1]);
%         else
%             rangePadding = 0.1 * (maxVal - minVal); % Add padding for better view
%             ylim([minVal - rangePadding, maxVal + rangePadding]);
%         end
     end
    sgtitle(name_string1);
    
    % Plotting the reconstructed signals 
    name_string2 = ['Reconstructed Approximation and Detail Signals of ', name];
    
    figure('Name', name_string2);
    
    
    reconstructed_signals = {A10, D10, D9, D8, D7, D6, D5, D4, D3, D2, D1};

    for i = 1:11
        subplot(11, 1, i);
        plot(reconstructed_signals{i});
        title(titles{i});
        axis tight;
% 
%         % Set Y-limits based on data range
%         minVal = min(reconstructed_signals{i});
%         maxVal = max(reconstructed_signals{i});
%         if minVal == maxVal
%             % Set a small default range if all values are the same
%             ylim([minVal - 1, maxVal + 1]);
%         else
%             rangePadding = 0.1 * (maxVal - minVal);
%             ylim([minVal - rangePadding, maxVal + rangePadding]);
%         end
    end
    
    sgtitle(name_string2);

    
end