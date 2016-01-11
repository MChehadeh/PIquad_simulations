clear all
clc
% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
Fs = 100;  % Sampling Frequency

N  = 2;  % Order
Fc = 10;  % Cutoff Frequency

% Construct an FDESIGN object and call its BUTTER method.
h  = fdesign.lowpass('N,F3dB', N, Fc, Fs);
Hd = design(h, 'butter');
coeff_Hd=coeffs(Hd);
[b,a]=sos2tf(coeff_Hd.SOSMatrix)
% [EOF]
%y(k)+a(2)y(k?1)+…+a(m+1)y(k?m)=b(1)x(k)+b(2)x(k?1)+…+b(n+1)x(k?n)