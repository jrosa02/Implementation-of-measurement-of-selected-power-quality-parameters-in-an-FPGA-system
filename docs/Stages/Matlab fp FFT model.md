# Purpose
Purpose is to create flexible base for developing, testing and validating fixed point FFT module
# Requirements 
- Input signal shake be normalized (0, 1)
- FFT should be calculated from variable input length and return variable output (compile time defined)
- There should be anti aliasing filtering 

### MVP Matlab fp FFT mode

![MVP fp Matlab model](Matlab_fp_FFT_2024-07-21.png)

### FFT size
- Main frequency is 50Hz
- There is need for monitoring harmonic frequencies up to 13th
- To be precise there is a need to acquire 8 periods of main freq
- To be precies there is a to oversample 10times the biggest freq
- The ADC resolution would be 12bit
To make accurate non shifted measurments I need to divide base freq to parts that are multiplication of highest harmonic and oversampling
$onewavebuffer = 16*16 = 256$
So:
$wholebuffer = 8*256 = 2048$