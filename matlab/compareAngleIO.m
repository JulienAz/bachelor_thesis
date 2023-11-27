function compareAngleIO(speedObj)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
plot(speedObj.input(:,1),speedObj.input(:,2),'.');
hold on;
plot(speedObj.output(:,1),speedObj.output(:,2),'.');
hold off;
end

