We conducted an EEG lab experiment which uses EEGLAB software to analyze multi-channel EEG data.

The experiment involves the following steps:
  * Installing EEGLAB and importing data
  * Data preparation, time and frequency domain analysis
  * Using independent component analysis (ICA) of EEG data

The data is first preprocessed by re-referencing and segmentation. Then, channel spectra and scalp maps are created to investigate the localization of spectral power. Finally, ICA is used to separate EEG components from artifact components.

1. Data preparation
      * Re-referencing the data to the average reference
      * Segmenting the data into epochs based on events (e.g., blinks, eye movements)
2. Time and frequency domain analysis
      * Visualizing the data in the time domain to observe the waveforms
      * Computing the channel spectra and scalp maps to investigate the frequency content and distribution of the EEG activity
3. Independent component analysis (ICA)
      * Decomposing the EEG data into independent components
      * Identifying and removing artifact components (e.g., eye movement, muscle movement, power line noise) based on their characteristics in the time domain, frequency domain, and topography

