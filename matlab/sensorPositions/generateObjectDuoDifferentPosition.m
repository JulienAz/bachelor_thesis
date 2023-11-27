function obj = generateObjectDuo(inputFunctionX,inputFunctionY, dataX,dataY, rpm, length)
%generates an Struct for a given speed containing the
%measured Data, 
%the sampled Input/Output
%the spline interpolated function
%the fit
obj.measuredDataX = dataX;
obj.measuredDataY = dataY;

%spline Interpolate with obj.fit being the goodness of fit
[obj.sin4X obj.fitX] = fit(obj.measuredDataX(:,2), obj.measuredDataX(:,3),'sin8');
[obj.sin4Y obj.fitY] = fit(obj.measuredDataY(:,2), obj.measuredDataY(:,3),'sin6');

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

