function tAngle = sampleAngle(rpm, length)
%sampleAngle simulates the rotation with given speed (rpm)
%   returns the angles over time with samplingrate of 450/s for "length"
%   samples
degreePerSecond = (rpm * 6)/450;
t = transpose(0:length);
tAngle = mod(t * degreePerSecond, 360);
end

