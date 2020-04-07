function [] = plot_data(clustered_data, error, k)

    %=======================================
    %           Plot 2D data
    %=======================================
    figure(1);
    dim = size(clustered_data, 2) - 1;
    color = ['r', 'g', 'b', 'y', 'm', 'k', 'c'];
    if dim == 2
        
        for i_for = 1 :  k
            idx = find(clustered_data(:, end) == i_for);

            plot(clustered_data(idx, 1), clustered_data(idx, 2),...
                ['w', 'o'], 'MarkerSize',  10, 'MarkerFacecolor', color(i_for), 'LineWidth', 1.5);
            
            title(['Plot']);
            xlabel(['\it x']);
            ylabel(['\it y']);
            set(gca, 'FontSize', 16, 'FontName', 'Times', 'LineWidth', 1.5);
            
            hold on;
        end
        hold off;
    end
    

    %=======================================
    %           Plot 2D error
    %=======================================
    figure(2);
    
    plot(error,...
        'b-s', 'MarkerSize',  10, 'MarkerFacecolor', 'b', 'LineWidth', 1.5);
    
    xlim([1 length(error)]);
    title(['Error']);
    xlabel(['Iteration No.']);
    ylabel(['Error']);
    set(gca, 'FontSize', 16, 'FontName', 'Times', 'LineWidth', 1.5);

end