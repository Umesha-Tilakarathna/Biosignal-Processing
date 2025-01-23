function [filtered_signal] = ma3_filter(signal, N)
    filtered_signal =  zeros(1,length(signal));
    for i = 1:length(signal)
        for j = 0:N-1
            if i-j<=0
                break
            end
            filtered_signal(i) = filtered_signal(i) + signal(i-j); 
            last_j  = j;
        end
        filtered_signal(i) = filtered_signal(i)/(last_j+1);
    end
end