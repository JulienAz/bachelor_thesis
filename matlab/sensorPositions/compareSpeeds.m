%load('Position_One\position1.mat');
%load('Position_Two\position2.mat');
%load('Position_Three\position3.mat');
%load('Position_Four\position4.mat');
load('Position_Five\position5.mat');


figure
hold on
plot(pos50.measuredData(:,2),pos50.measuredData(:,3),'.');
plot(pos200.measuredData(:,2),pos200.measuredData(:,3),'.');
plot(pos1000.measuredData(:,2),pos1000.measuredData(:,3),'.');
plot(pos1600.measuredData(:,2),pos1600.measuredData(:,3),'.');
plot(pos2000.measuredData(:,2),pos2000.measuredData(:,3),'.');
legend('50','200','1000','1600','2000');