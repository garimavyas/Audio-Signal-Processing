%exp no 3
% to perform up sampling and down sampling of an audio signal

clear all
close all
clc

[y,Fs,nbits]=wavread('C:\Documents and Settings\user\Desktop\sample.wav') %return the value of audio signal in Y, sampling frequency in Fs and bit resolution in nbits
wavplay(y) % play backs the audio file at 11025 hz
x=downsample(y,2);
wavwrite(x,'sample_down.wav')
wavplay(x)
z=upsample(y,2)
wavwrite(z,'sample_up.wav')
wavplay(z)


