function obj = generateObjectDuo(inputFunctionX,inputFunctionY, data, rpm, length)
%generates an Struct for a given speed containing the
%measured Data, 
%the sampled Input/Output
%the spline interpolated function
%the fit
obj.measuredData = data;

%spline Interpolate with obj.fit being the goodness of fit
[obj.sin4X obj.fitX] = fit(obj.measuredData(:,2), obj.measuredData(:,3),'sin8');
[obj.sin4Y obj.fitY] = fit(obj.measuredData(:,2), obj.measuredData(:,4),'sin8');

[obj.inputX, obj.outputX] = sampleIO(inputFunctionX, obj.sin4X, rpm, length);
[obj.inputY, obj.outputY] = sampleIO(inputFunctionY, obj.sin4Y, rpm, length);

figure
plot(obj.inputX(:,1),obj.inputX(:,2),'.');
hold on
plot(obj.outputX(:,1),obj.outputX(:,2),'.');
hold off

figure
plot(obj.inputY(:,1),obj.inputY(:,2),'.');
hold on
plot(obj.outputY(:,1),obj.outputY(:,2),'.');
hold off
end

