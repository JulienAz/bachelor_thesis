function plotTiledPosition(data)
%PLOTTILEDPOSITION Summary of this function goes here
%   Detailed explanation goes here
or = [0.8500 0.3250 0.0980];
tiledlayout(2,1)
nexttile
plot(data(:,2), data(:,3),'.','Markersize',10);
xlabel('Angular Position / \theta','FontSize',15);
ylabel('Magnetic Filed Strength / B_x','FontSize',15);
nexttile
plot(data(:,2), data(:,4),'.','color',[0.8500 0.3250 0.0980],'Markersize',10);
xlabel('Angular Position / \theta','FontSize',15);
ylabel('Magnetic Filed Strength / B_y','FontSize',15);
end

