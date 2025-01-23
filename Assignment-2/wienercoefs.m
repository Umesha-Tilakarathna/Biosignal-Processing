function W0 = wienercoefs(Y_n,N_n,order)

% Order is filter order
% Y_n is the desired signal template
% N_n is the characterized noise
% W0 is the returned Wiener filter coefficients

    % Compute the auto-correlation of the expected signal
    R_YY_ = xcorr(Y_n, order-1, 'biased');
    R_YY = toeplitz(R_YY_(order:end)); 

    % Compute the auto-correlation of the template noise signal
    R_NN_ = xcorr(N_n, order-1, 'biased');   
    R_NN = toeplitz(R_NN_(order:end)); 

    % Compute the cross-correlation
    R_Yy = R_YY_(order:end); 

    % Compute the Wiener filter weights
    W0 = inv(R_YY + R_NN) * R_Yy.';


end