function plotBxy(data)
or = [0.4940, 0.1840, 0.5560];
figure
plot(data(:,3), data(:,4),'.','Color',[0.4940, 0.1840, 0.5560],'Markersize',10);
xlabel('Magnetic Filed Strength / B_x','FontSize',15);
ylabel('Magnetic Filed Strength / B_y','FontSize',15);


end

