function plotClassification(X, y);

    pos = find(y == 1);
    neg = find(y == 0);

    fig = figure(100);
    hold on;

    plot(X(pos,2), X(pos,3), 'k+', 'MarkerFaceColor', 'b');
    plot(X(neg,2), X(neg,3), 'ko', 'MarkerFaceColor', 'y');
    xlabel ('Feature 1');
    ylabel ('Feature 2');
    title ('Classification');

    hold off;
    print (fig, 'classification_plot.png');
end
