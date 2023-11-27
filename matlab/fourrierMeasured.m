function  Fourrier(obj)
%FOURRIER Summary of this function goes here
%   Detailed explanation goes here
Fs = 450;
T = 1/Fs;
L = length(obj.measuredData(:,3));
Y = fft(obj.measuredData(:,3));
p2 = abs(Y/L);
p1 = p2(1:L/2+1);
p1(2:end-1) = 2*p1(2:end-1);
f = Fs*(0:(L/2))/L;
plot(f,p1);
end