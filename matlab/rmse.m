function fit = rmse(tf,object,axe)
if axe == 'X'
    simulated = sim(tf,object.outputX(:,2));
    reference = object.inputX(:,2);
    fit = sqrt(sum((simulated - reference).^2) / length(simulated));
    tiledlayout(2,1);
    nexttile;
    plot(object.outputX(1:100,2),'b', 'LineWidth',2);
    tmp = ['RMSE: ' num2str(fit)];
    title(tmp);
    hold on
    plot(simulated(1:100), 'r', 'LineWidth',2);
    plot(reference(1:100), 'g','LineWidth',2);
    legend('input', 'output', 'goal');
    xlabel('Zeit');
    hold off

    nexttile;
    plot(object.outputX(:,1),object.outputX(:,2),'b.');
    hold on
    plot(object.inputX(:,1),simulated,'.r');
    plot(object.inputX(:,1),reference,'.g');
    legend('input', 'output', 'goal');
    xlabel('Winkel');
    hold off
else    
    simulated = sim(tf,object.outputY(:,2));
    reference = object.inputY(:,2);
    fit = sqrt(sum((simulated - reference).^2) / length(simulated));
    tiledlayout(2,1);
    nexttile;
    plot(object.outputY(1:100,2),'b', 'LineWidth',2);
    tmp = ['RMSE: ' num2str(fit)];
    title(tmp);
    hold on
    plot(simulated(1:100), 'r', 'LineWidth',2);
    plot(reference(1:100), 'g','LineWidth',2);
    legend('input', 'output', 'goal');
    xlabel('Zeit');
    hold off

    nexttile;
    plot(object.outputY(:,1),object.outputY(:,2),'b.');
    hold on
    plot(object.inputY(:,1),simulated,'.r');
    plot(object.inputY(:,1),reference,'.g');
    legend('input', 'output', 'goal');
    xlabel('Winkel');
    hold off


end

