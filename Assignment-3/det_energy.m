function [det_en] = det_energy(sig1,sig2)

    % Calculates and returns the energy difference
    % between two signals
    
    det_en = sum(sig1.^2 -sig2.^2);
end