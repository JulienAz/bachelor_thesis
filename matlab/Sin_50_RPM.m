function MagX = Sin_50_RPM(p);
%SIN_50_RPM Summary of this function goes here
%   Detailed explanation goes here
MagX = 2454 + -3.88*cos(0.01754 * p) + -116.1 *sin( 0.01754* p) + 1211*cos(2*p* 0.01754) + 762.4*sin(2*p* 0.01754)
end

