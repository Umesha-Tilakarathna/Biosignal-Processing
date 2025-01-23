function [e_n, est_noise] = rls_filter(R,x_n,lambda,order)
    
    %Function: RLS filtering of a signal
    
    %Input
    %R is the reference noise signal
    %x_n is the input signal;
    %lambda: forgetting factor
    %order: filter order
    
    %output
    %e_n: filtered signal
    %est_noise: the noise estimation of signal through the filtering
    %process
    
    
    N = length(x_n);
    M = order+1;
    delta = 1e-2;
    P_n = delta^(-1) * eye(M);
    w_n = zeros(M,1); % Initial filter coefficients
    e_n = zeros(N,1);
    est_noise = zeros(N,1);
    
    for i = M:N
        
        R_n = R(i:-1:i-M+1);
        K_n = (lambda^(-1) * P_n * R_n)/ (1 + lambda^(-1)* R_n'*P_n*R_n);
        P_n = lambda^(-1) * P_n - lambda^(-1)*K_n*R_n'*P_n;
        e_n(i) = x_n(i) - w_n'*R_n;
        w_n = w_n + K_n*e_n(i);
        est_noise(i) = w_n'*R_n;
        
    end
end