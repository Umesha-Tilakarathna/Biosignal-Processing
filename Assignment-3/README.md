This assignment focuses on wavelet-based signal processing:
- Implementation of continuous and discrete wavelet transforms (CWT and DWT).  
- Use of MATLAB's built-in wavelet functions.  
- Signal denoising and compression using wavelet techniques.

### **I. Continuous Wavelet Transform (CWT)**

1. **Wavelet Properties**  
   - Derive the Mexican hat wavelet and normalize it.  
   - Verify wavelet properties: zero mean, unity energy, and compact support.  
   - Examine time-domain waveforms and spectra of daughter wavelets.

2. **Wavelet Decomposition**  
   - Create a non-stationary waveform in MATLAB.  
   - Apply scaled Mexican hat wavelets and perform convolution to extract coefficients.  
   - Visualize coefficients using a spectrogram.  
   - Interpret how CWT coefficients represent the signal's frequency content.

### **II. Discrete Wavelet Transform (DWT)**

1. **Wavelet Toolbox Application**  
   - Create two waveforms and corrupt them with AWGN (10 dB SNR).  
   - Use MATLAB's `wavefun` and `waveletAnalyzer` to observe wavelet/scaling functions (e.g., Haar, db9).  
   - Perform 10-level wavelet decomposition (`wavedec`) and reconstruct signals using inverse DWT.  
   - Verify energy conservation between original and reconstructed signals.

2. **Signal Denoising**  
   - Plot wavelet coefficients in descending order (stem plot).  
   - Apply thresholding to suppress low-magnitude coefficients and reconstruct the signal.  
   - Calculate RMSE and compare the denoised signal with the original.  
   - Repeat the process with Haar and db9 wavelets.  
   - Compare RMSE and waveform morphology for both wavelets.

3. **Signal Compression**  
   - Analyze the aVR lead of an ECG (sampled at 257 Hz).  
   - Obtain discrete wavelet coefficients and calculate the number of coefficients needed to represent 99% of the signal energy.  
   - Compress the signal and calculate the compression ratio.  
   - Comment on the morphology of the reconstructed signal and the achieved compression ratio.

---
