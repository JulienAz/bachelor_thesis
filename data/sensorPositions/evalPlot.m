function evalPlot(data)

    tiledlayout(3,1);
    nexttile;
    plot(data(:,2),data(:,3),'.b');
    nexttile;
    plot(data(:,2),data(:,4),'.g');
    nexttile;
    plot(data(:,3),data(:,4),'.r');
   
end

