function [e_n, est_noise] = lms_filter(x_n, r_n, M,mu)
    
    %Function: LMS filtering of a signal
    
    %Input
    %r_n is the reference noise signal
    %x_n is the input signal
    %M: filter order
    %mu: Hyperparameter for gradient update
   
    %output
    %e_n: filtered signal
    %est_noise: the noise estimation of signal through the filtering
    %process
    
    N = length(x_n);
    
    initial_w = zeros(M,1);
    e_n = zeros(N,1);
    est_noise = zeros(N,1);

    for i = M:N

        if i == M
            w_n = initial_w;
        end

        est_noise(i) = w_n' * r_n(i:-1:i-(M-1)); %filter order length of
        % r_n is selected
        e_n(i) = x_n(i) - est_noise(i);
        w_n = w_n + 2 * mu * e_n(i) * r_n(i:-1:i-(M-1));

    end

end