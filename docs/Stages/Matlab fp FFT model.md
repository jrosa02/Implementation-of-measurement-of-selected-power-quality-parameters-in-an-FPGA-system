# Purpose
Purpose is to create flexible base for developing, testing and validating fixed point FFT module
# Requirements 
- Input signal shake be normalized (0, 1)
- FFT should be calculated from variable input length and return variable output (compile time defined)
- There should be anti aliasing filtering 

### MVP Matlab fp FFT mode

![MVP fp Matlab model](Matlab_fp_FFT_2024-07-21.png)

### FFT size
- Main frequency is 230Hz
- There is need for monitoring harmonic frequencies up to 13th
- To be precise there is a need to acquire 4 periods of main freq
- To be precies there is a to oversample 10times the biggest freq
- The ADC resolution would be 16bit max

The minimal sampling freq:
$f_{smin}=230*13*10=29900[Hz] = 29.9[kHz]$
The buffer capacity: 
$B_{cap}= \cfrac{1}{230}*4*f_{smin}=520$
Lets round it up to 512 for aesthetic reasons :-)
The buffer bitcount:
$B_{bitcap}=520*16=8320[bit]$
Well not cool