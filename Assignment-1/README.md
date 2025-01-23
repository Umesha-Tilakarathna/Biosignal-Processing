# Signal Processing Assignment  

## 1. Smoothing Filters  

### 1.1 Moving Average Filter (MA(N))  
- Implementation of MA(3) filter using custom script and built-in function.  
- Group delay compensation.  
- Comparison of noise-added signal, filtered signal, and original signal.  
- Power Spectral Density (PSD) analysis.  
- Analysis of MA(10) filter and its comparison with MA(3).  
- Determination of optimal filter order using Mean Squared Error (MSE).  

### 1.2 Savitzky-Golay Filter (SG(N,L))  
- Implementation of SG(3,11) filter with group delay compensation.  
- Determination of optimal filter parameters (N, L) using MSE.  
- Comparison of MA(N) and SG(N,L) filters in terms of signal features and computational complexity.  

---

## 2. Ensemble Averaging  

### 2.1 Signal with Multiple Measurements (ABR Data)  
- Noise removal from auditory brainstem response (ABR) using synchronized averaging.  
- Calculation of MSE and plotting progressive MSE values against the number of epochs.  
- SNR improvement analysis.  

### 2.2 Signal with Repetitive Patterns (ECG Pulse Train)  
- Addition of Gaussian white noise to ECG signal.  
- Segmentation of ECG pulses using normalized cross-correlation.  
- Ensemble averaging and SNR improvement analysis.  
- Justification of cross-correlation-based segmentation over R-wave detection.  

---

## 3. Designing FIR Filters Using Windows  

### 3.1 Rectangular Window  
- Effect of window length (M) on impulse response.  
- Magnitude and phase response comparison for different window lengths.  

### 3.2 Window Improvements  
- Exploration of smoother windows (e.g., Hamming, Hanning) to improve magnitude response.  

---

## General Tasks  
- Use of MATLAB for signal processing tasks.  
- Comparison of theoretical and practical results with plots and discussions.  
- MATLAB coding for filter design, signal processing, and performance evaluation.  
