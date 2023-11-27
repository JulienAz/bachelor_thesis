function obj = generateObject(inputFunction, data, rpm, length)
%generates an Struct for a given speed containing the
%measured Data, 
%the sampled Input/Output
%the spline interpolated function
%the fit
obj.measuredData = data;

%spline Interpolate with obj.fit being the goodness of fit
[obj.sin4 obj.fit] = fit(obj.measuredData(:,2), obj.measuredData(:,3),'sin8');

[obj.input, obj.output] = sampleIO(inputFunction, obj.sin4, rpm, length);

figure
plot(obj.input(:,1),obj.input(:,2),'.');
hold on
plot(obj.output(:,1),obj.output(:,2),'.');
hold off

end

