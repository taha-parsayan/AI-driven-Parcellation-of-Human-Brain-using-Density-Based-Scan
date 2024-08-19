
epsilons = zeros(1,250);
counter = 1;
for k = 10:10:250
    x =  LH_vertexes{33};
    Mdl = KDTreeSearcher(x);
    average_dist = zeros(1,numel(x));
    for i = 1:size((x),1)
        [n,d] = knnsearch(Mdl,x(i,:),'k',k);
        average_dist(i) = mean(d(2:end));
    end
    % subplot(2,2,1);
    %plot(unique(average_dist), 'linewidth', 2, 'color', 'k');
    %xlabel('Samples');
    %ylabel('Averaged KNN-distance');
    %title('Caudalmiddlefrontal')

    Q = unique(average_dist);
    [res_x, idx_of_result] = knee_pt(unique(Q));
    %hold on;
    %plot(res_x,Q(res_x), 'or', 'markersize', 10, 'markerfacecolor', 'y');
    
    epsilons(counter) = Q(res_x);
    counter = counter + 1;
end

%%
values = zeros(4, 25);
k = 10:10:250;

subject = x;
% subject = RH_vertex_11146310;
% subject = RH_vertex_6500;
 %subject = RH_vertex_10511485;

for t = 1:25
    LBL = mydbscan(subject, k(t), epsilons(t));
    %disp('label_1351760:');
    %disp(unique(LBL'));
    noise = (numel(find(LBL == 0)) / numel(LBL))*100;
    %disp(['noise: ' num2str(noise) '%']);
    maximum = 0;
    for i=1:numel(unique(LBL'))-1
        class1 = (numel(find(LBL == i)) / numel(LBL))*100;
        %disp(['class' num2str(i) ': ' num2str(class1) '%']);
        %disp(' ');
        if class1 >= maximum
           maximum = class1; 
        end
    end
    
    values(1,t) = eps(t);
    values(2,t) = numel(unique(LBL'));
    values(3,t) = noise;
    values(4,t) = maximum;
    
end

figure();
subplot(2,2,1);
plot(k,values(1,:));
title('Epsilon Value');
subplot(2,2,2);
plot(k,values(2,:));
title('Number of Clusters');
subplot(2,2,3);
plot(k,values(3,:));
title('Noise Value');
subplot(2,2,4);
plot(k,values(4,:));
title('Bigest Cluster Vertexex');



