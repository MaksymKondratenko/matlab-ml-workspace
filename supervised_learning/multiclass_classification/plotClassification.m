function plotClassification(X, y);

    class1 = find(y == 1);
    class2 = find(y == 2);
    class3 = find(y == 3);
    class4 = find(y == 4);

    fig = figure(100);
    hold on;

    plot(X(class1,2), X(class1,3), 'k+', 'MarkerFaceColor', 'b');
    plot(X(class2,2), X(class2,3), 'ko', 'MarkerFaceColor', 'm');
    plot(X(class3,2), X(class3,3), 'ko', 'MarkerFaceColor', 'y');
    plot(X(class4,2), X(class4,3), 'kx', 'MarkerFaceColor', 'g');
    xlabel ('Feature 1');
    ylabel ('Feature 2');
    title ('Classification');

    hold off;
    print (fig, 'classification_plot.png');
end
