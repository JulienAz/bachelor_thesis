function [fitX fitY] = rmseDuo(tfX,tfY,object)
simulatedX = sim(tfX,object.outputX(:,2));
referenceX = object.inputX(:,2);

simulatedY = sim(tfY,object.outputY(:,2));
referenceY = object.inputY(:,2);

fitX = sqrt(sum((simulatedX - referenceX).^2) / length(simulatedX));
standardFitX = sqrt(sum((object.outputX(:,2) - referenceX).^2) / length(referenceX))


fitY = sqrt(sum((simulatedY - referenceY).^2) / length(simulatedY));
standardFitY = sqrt(sum((object.outputY(:,2) - referenceY).^2) / length(referenceY))

tiledlayout(2,1);
nexttile;
plot(object.outputX(1:100,2),'b', 'LineWidth',2);
tmp = ['NAME: ' tfX.Name  ';  RMSE: ' num2str(fitX)];
title(tmp);
hold on
plot(simulatedX(1:100), 'r', 'LineWidth',2);
plot(referenceX(1:100), 'g','LineWidth',2);
legend('input', 'output', 'goal');
xlabel('Zeit');
hold off

nexttile;
plot(object.outputX(:,1),object.outputX(:,2),'b.');
hold on
plot(object.inputX(:,1),simulatedX,'.r');
plot(object.inputX(:,1),referenceX,'.g');
legend('input', 'output', 'goal');
xlabel('Winkel');
hold off

figure
tiledlayout(2,1);
nexttile;
plot(object.outputY(1:100,2),'b', 'LineWidth',2);
tmp = ['NAME: ' tfY.Name  ';  RMSE: ' num2str(fitY)];
title(tmp);
hold on
plot(simulatedY(1:100), 'r', 'LineWidth',2);
plot(referenceY(1:100), 'g','LineWidth',2);
legend('input', 'output', 'goal');
xlabel('Zeit');
hold off

nexttile;
plot(object.outputY(:,1),object.outputY(:,2),'b.');
hold on
plot(object.inputY(:,1),simulatedY,'.r');
plot(object.inputY(:,1),referenceY,'.g');
legend('input', 'output', 'goal');
xlabel('Winkel');
hold off



end

