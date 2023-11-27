function fit = rmseUni(tf,object)
    simulated = sim(tf,object.output(:,2));
    reference = object.input(:,2);
    fit = sqrt(sum((simulated - reference).^2) / length(simulated));
    tiledlayout(2,1);
    nexttile;
    plot(object.output(1:100,2),'b', 'LineWidth',2);
    tmp = ['RMSE: ' num2str(fit)];
    title(tmp);
    hold on
    plot(simulated(1:100), 'r', 'LineWidth',2);
    plot(reference(1:100), 'g','LineWidth',2);
    legend('input', 'output', 'goal');
    xlabel('Zeit');
    hold off

    nexttile;
    plot(object.output(:,1),object.output(:,2),'b.');
    hold on
    plot(object.input(:,1),simulated,'.r');
    plot(object.input(:,1),reference,'.g');
    legend('input', 'output', 'goal');
    xlabel('Winkel');
    hold off


end

