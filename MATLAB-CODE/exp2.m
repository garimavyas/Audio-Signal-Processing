%Experiment 2
% a.	Read an audio file, its sampling rate and bits per sample. 
% b.	Write an audio file, at different sampling rates, at different bits per sample.  
% c.	Play an audio file at different sampling rates.
% d.	Use of whos command to view the variables in the workspace.

% a

[y,fs,nbits,opts]=wavread('C:\Documents and Settings\user\Desktop\sample.wav'); %gives us sampling rate, no of bits used
fprintf('Information of the sound file "%s":\n', 'handel.wav');
fprintf('Duration = %g seconds\n', length(y)/fs);
fprintf('Sampling rate = %g samples/second\n', fs);
fprintf('Bit resolution = %g bits/sample\n', nbits);

% b

wavwrite(y,1000,8,'handel_1K'); % write file y having 1000 Fs & 8 bits per sample and store it by name handel_1k
wavwrite(y,4000,'handel_4K'); % write file y having 4000 Fs and store it by name handel_1k
wavwrite(y,8000,'handel_8K'); % write file y having 8000 Fs and store it by name handel_1k
wavwrite(y,10000,'handel_10K'); % write file y having 10000 Fs and store it by name handel_1k

%c

[y,Fs]=wavread('C:\Documents and Settings\user\Desktop\sample.wav')
wavplay(y,5000) % plays Y at 5000 sampling rate
wavplay(y,8000)  % plays Y at 8000 sampling rate
wavplay(y,10000)  % plays Y at 10000 sampling rate

%d

whos % gives the list of parameters included in an audio file