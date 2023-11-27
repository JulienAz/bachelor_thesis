function frqResponse(obj)
%adds the estimated Amplitude and Phase difference of the given I/O object
[Amp,Ph] = freqrespmeasure(obj.input(:,2),obj.output(:,2))
obj.frqResponse = [Amp, Ph];
end

