%exp no 1
%to load display and playback audio file.

clear all
close all
clc

[y,Fs,nbits]=wavread('C:\MATLAB7\work\garima\asdf') %return the value of audio signal in Y, sampling frequency in Fs and bit resolution in nbits
wavplay(y) % play backs the audio file at 11025 hz
wavplay(y,4000) %plays the audio at sampling rate of 6000
plot(y) % it plots the signal y
grid on
xlabel('time')
ylabel('amplitude')
title('plot of audio file')