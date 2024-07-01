clear all;
MeasuredData = [0, 0];
out = sim("SignalProcessing.slx");
disp(out.FFT_output);