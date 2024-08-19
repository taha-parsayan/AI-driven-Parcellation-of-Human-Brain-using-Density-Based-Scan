
function y = knn_give_eps(x,xx)
    k = xx;
    Mdl = KDTreeSearcher(x);
    average_dist = zeros(1,numel(x));
    for i = 1:size((x),1)
        [n,d] = knnsearch(Mdl,x(i,:),'k',k);
        average_dist(i) = mean(d(2:end));
    end

    Q = unique(average_dist);
    [res_x, idx_of_result] = knee_pt(unique(Q));


    y = Q(res_x);

    if xx == 100
        subplot(2,2,4);
        plot(unique(average_dist), 'linewidth', 2, 'color', 'k');
        xlabel('No. of points');
        ylabel('KNN-graph');
        title('D');
        hold on;
        plot(res_x,Q(res_x), 'or', 'markersize', 10, 'markerfacecolor', 'y');
    end
    
end