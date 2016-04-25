%to perform FFT and IFFT on audio signal

clear all
close all
clc


[y,Fs,nbits]=wavread('C:\MATLAB7\work\sample.wav') %return the value of audio signal in Y, sampling frequency in Fs and bit resolution in nbits
wavplay(y) % play backs the audio file at 11025 hz
%wavplay(y,6000) %plays the audio at sampling rate of 6000
plot(y) % it plots the signal y
grid on
xlabel('TIME')
ylabel('frequency')
title('spectrum of Y')



yfft=fft(y); % calculates fft of Y
figure(2)
freqz(yfft);  % gives magnitude and phase of FFT signal

figure(3)
plot(yfft)
grid on
xlabel('TIME')
ylabel('frequency')
title('fft of Y')


yifft=ifft(yfft);  % gives IFFT of YFFT signal
figure(4)
plot(yifft)
grid on
xlabel('TIME')
ylabel('frequency')
title('IFFT of YFFT')