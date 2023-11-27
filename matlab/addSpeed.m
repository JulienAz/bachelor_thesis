function all = addSpeed(data)
    speed = [0; (angdiff(deg2rad(data(:, 2))) / 2.2)];
    speed = speed*1000*60/2/pi;
    all = [data, speed];
end

