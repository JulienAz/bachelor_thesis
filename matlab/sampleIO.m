function [Input,Output] = sampleIO(inputFunction, outputFunction, rpm, length)
%sampleIO generates Input/Ouput data
%   Given interpolated curves (Angle vs Magnetic Data) 
angle = sampleAngle(rpm, length);
Input = [angle, inputFunction(angle)];
Output = [angle, outputFunction(angle)];
end

