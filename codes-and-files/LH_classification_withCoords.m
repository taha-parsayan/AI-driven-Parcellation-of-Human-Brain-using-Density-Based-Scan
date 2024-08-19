clc;
clear;
close all;
tic;
%%
disp('Loading data...');
load('A:\SBU_University\Master_Project\essentials\brain_data');
coords = freesurfer_read_surf('A:\SBU_University\Master_Project\essentials\RH.pial');
RH_label_unique = unique(RH_label);
disp('Data loaded successfully!');
%
disp('Isolating RH vertexes...');

RH_vertex_0 = [RHarea(find(RH_label == 0)) RHcurv(find(RH_label == 0)) RHthick(find(RH_label == 0)) RHvol(find(RH_label == 0)) coords((find(RH_label == 0)),:)];
RH_vertex_6500 = [RHarea(find(RH_label == 6500)) RHcurv(find(RH_label == 6500)) RHthick(find(RH_label == 6500)) RHvol(find(RH_label == 6500)) coords((find(RH_label == 6500)),:)];
RH_vertex_660700 = [RHarea(find(RH_label == 660700)) RHcurv(find(RH_label == 660700)) RHthick(find(RH_label == 660700)) RHvol(find(RH_label == 660700)) coords((find(RH_label == 660700)),:)];
RH_vertex_1316060 = [RHarea(find(RH_label == 1316060)) RHcurv(find(RH_label == 1316060)) RHthick(find(RH_label == 1316060)) RHvol(find(RH_label == 1316060)) coords((find(RH_label == 1316060)),:)];
RH_vertex_1326300 = [RHarea(find(RH_label == 1326300)) RHcurv(find(RH_label == 1326300)) RHthick(find(RH_label == 1326300)) RHvol(find(RH_label == 1326300)) coords((find(RH_label == 1326300)),:)];
RH_vertex_1351760 = [RHarea(find(RH_label == 1351760)) RHcurv(find(RH_label == 1351760)) RHthick(find(RH_label == 1351760)) RHvol(find(RH_label == 1351760)) coords((find(RH_label == 1351760)),:)];
RH_vertex_2146559 = [RHarea(find(RH_label == 2146559)) RHcurv(find(RH_label == 2146559)) RHthick(find(RH_label == 2146559)) RHvol(find(RH_label == 2146559)) coords((find(RH_label == 2146559)),:)];
RH_vertex_2647065 = [RHarea(find(RH_label == 2647065)) RHcurv(find(RH_label == 2647065)) RHthick(find(RH_label == 2647065)) RHvol(find(RH_label == 2647065)) coords((find(RH_label == 2647065)),:)];
RH_vertex_3296035 = [RHarea(find(RH_label == 3296035)) RHcurv(find(RH_label == 3296035)) RHthick(find(RH_label == 3296035)) RHvol(find(RH_label == 3296035)) coords((find(RH_label == 3296035)),:)];
RH_vertex_3302420 = [RHarea(find(RH_label == 3302420)) RHcurv(find(RH_label == 3302420)) RHthick(find(RH_label == 3302420)) RHvol(find(RH_label == 3302420)) coords((find(RH_label == 3302420)),:)];
RH_vertex_3302560 = [RHarea(find(RH_label == 3302560)) RHcurv(find(RH_label == 3302560)) RHthick(find(RH_label == 3302560)) RHvol(find(RH_label == 3302560)) coords((find(RH_label == 3302560)),:)];
RH_vertex_3957880 = [RHarea(find(RH_label == 3957880)) RHcurv(find(RH_label == 3957880)) RHthick(find(RH_label == 3957880)) RHvol(find(RH_label == 3957880)) coords((find(RH_label == 3957880)),:)];
RH_vertex_3988500 = [RHarea(find(RH_label == 3988500)) RHcurv(find(RH_label == 3988500)) RHthick(find(RH_label == 3988500)) RHvol(find(RH_label == 3988500)) coords((find(RH_label == 3988500)),:)];
RH_vertex_3988540 = [RHarea(find(RH_label == 3988540)) RHcurv(find(RH_label == 3988540)) RHthick(find(RH_label == 3988540)) RHvol(find(RH_label == 3988540)) coords((find(RH_label == 3988540)),:)];
RH_vertex_4924360 = [RHarea(find(RH_label == 4924360)) RHcurv(find(RH_label == 4924360)) RHthick(find(RH_label == 4924360)) RHvol(find(RH_label == 4924360)) coords((find(RH_label == 4924360)),:)];
RH_vertex_6553700 = [RHarea(find(RH_label == 6553700)) RHcurv(find(RH_label == 6553700)) RHthick(find(RH_label == 6553700)) RHvol(find(RH_label == 6553700)) coords((find(RH_label == 6553700)),:)];
RH_vertex_6558940 = [RHarea(find(RH_label == 6558940)) RHcurv(find(RH_label == 6558940)) RHthick(find(RH_label == 6558940)) RHvol(find(RH_label == 6558940)) coords((find(RH_label == 6558940)),:)];
RH_vertex_7874740 = [RHarea(find(RH_label == 7874740)) RHcurv(find(RH_label == 7874740)) RHthick(find(RH_label == 7874740)) RHvol(find(RH_label == 7874740)) coords((find(RH_label == 7874740)),:)];
RH_vertex_8204875 = [RHarea(find(RH_label == 8204875)) RHcurv(find(RH_label == 8204875)) RHthick(find(RH_label == 8204875)) RHvol(find(RH_label == 8204875)) coords((find(RH_label == 8204875)),:)];
RH_vertex_9180240 = [RHarea(find(RH_label == 9180240)) RHcurv(find(RH_label == 9180240)) RHthick(find(RH_label == 9180240)) RHvol(find(RH_label == 9180240)) coords((find(RH_label == 9180240)),:)];
RH_vertex_9180300 = [RHarea(find(RH_label == 9180300)) RHcurv(find(RH_label == 9180300)) RHthick(find(RH_label == 9180300)) RHvol(find(RH_label == 9180300)) coords((find(RH_label == 9180300)),:)];
RH_vertex_9182740 = [RHarea(find(RH_label == 9182740)) RHcurv(find(RH_label == 9182740)) RHthick(find(RH_label == 9182740)) RHvol(find(RH_label == 9182740)) coords((find(RH_label == 9182740)),:)];
RH_vertex_9211105 = [RHarea(find(RH_label == 9211105)) RHcurv(find(RH_label == 9211105)) RHthick(find(RH_label == 9211105)) RHvol(find(RH_label == 9211105)) coords((find(RH_label == 9211105)),:)];
RH_vertex_9221140 = [RHarea(find(RH_label == 9221140)) RHcurv(find(RH_label == 9221140)) RHthick(find(RH_label == 9221140)) RHvol(find(RH_label == 9221140)) coords((find(RH_label == 9221140)),:)];
RH_vertex_9221340 = [RHarea(find(RH_label == 9221340)) RHcurv(find(RH_label == 9221340)) RHthick(find(RH_label == 9221340)) RHvol(find(RH_label == 9221340)) coords((find(RH_label == 9221340)),:)];
RH_vertex_9231540 = [RHarea(find(RH_label == 9231540)) RHcurv(find(RH_label == 9231540)) RHthick(find(RH_label == 9231540)) RHvol(find(RH_label == 9231540)) coords((find(RH_label == 9231540)),:)];
RH_vertex_10511485 = [RHarea(find(RH_label == 10511485)) RHcurv(find(RH_label == 10511485)) RHthick(find(RH_label == 10511485)) RHvol(find(RH_label == 10511485)) coords((find(RH_label == 10511485)),:)];
RH_vertex_10542100 = [RHarea(find(RH_label == 10542100)) RHcurv(find(RH_label == 10542100)) RHthick(find(RH_label == 10542100)) RHvol(find(RH_label == 10542100)) coords((find(RH_label == 10542100)),:)];
RH_vertex_11146310 = [RHarea(find(RH_label == 11146310)) RHcurv(find(RH_label == 11146310)) RHthick(find(RH_label == 11146310)) RHvol(find(RH_label == 11146310)) coords((find(RH_label == 11146310)),:)];
RH_vertex_11832480 = [RHarea(find(RH_label == 11832480)) RHcurv(find(RH_label == 11832480)) RHthick(find(RH_label == 11832480)) RHvol(find(RH_label == 11832480)) coords((find(RH_label == 11832480)),:)];
RH_vertex_13145750 = [RHarea(find(RH_label == 13145750)) RHcurv(find(RH_label == 13145750)) RHthick(find(RH_label == 13145750)) RHvol(find(RH_label == 13145750)) coords((find(RH_label == 13145750)),:)];
RH_vertex_14423100 = [RHarea(find(RH_label == 14423100)) RHcurv(find(RH_label == 14423100)) RHthick(find(RH_label == 14423100)) RHvol(find(RH_label == 14423100)) coords((find(RH_label == 14423100)),:)];
RH_vertex_14433500 = [RHarea(find(RH_label == 14433500)) RHcurv(find(RH_label == 14433500)) RHthick(find(RH_label == 14433500)) RHvol(find(RH_label == 14433500)) coords((find(RH_label == 14433500)),:)];
RH_vertex_14464220 = [RHarea(find(RH_label == 14464220)) RHcurv(find(RH_label == 14464220)) RHthick(find(RH_label == 14464220)) RHvol(find(RH_label == 14464220)) coords((find(RH_label == 14464220)),:)];
RH_vertex_14474380 = [RHarea(find(RH_label == 14474380)) RHcurv(find(RH_label == 14474380)) RHthick(find(RH_label == 14474380)) RHvol(find(RH_label == 14474380)) coords((find(RH_label == 14474380)),:)];

disp('RH Vertexes isolated successfully!');

%%
disp('Labeling vertexes...');
dist=@(y,Y) pdist2(y,Y);

% label_0 = dbscan(RH_vertex_0, 50, 0.1, dist);
% disp('label_0:');
% disp(unique(label_0));

RH_vertexes = {RH_vertex_14474380;RH_vertex_14464220;RH_vertex_14433500;RH_vertex_14423100;RH_vertex_13145750
    RH_vertex_11832480;RH_vertex_11146310;RH_vertex_10542100;RH_vertex_10511485;RH_vertex_9231540;RH_vertex_9221340
    RH_vertex_9221140;RH_vertex_9211105;RH_vertex_9182740;RH_vertex_9180300;RH_vertex_9180240;RH_vertex_8204875
    RH_vertex_7874740;RH_vertex_6558940;RH_vertex_6553700;RH_vertex_4924360;RH_vertex_3988540;RH_vertex_3988500;RH_vertex_3957880
    RH_vertex_3302560;RH_vertex_3302420;RH_vertex_3296035;RH_vertex_2647065;RH_vertex_2146559;RH_vertex_1351760;RH_vertex_1326300
    RH_vertex_1316060;RH_vertex_660700;RH_vertex_6500};

%weightenning features
for i = 1:34
   matrix = RH_vertexes{i};
   matrix(:, 5:7) = matrix(:, 5:7) * 10;
   RH_vertexes{i} = matrix;
end


area_names = {'RH_vertex_14474380';'RH_vertex_14464220';'RH_vertex_14433500';'RH_vertex_14423100';'RH_vertex_13145750'
    'RH_vertex_11832480';'RH_vertex_11146310';'RH_vertex_10542100';'RH_vertex_10511485';'RH_vertex_9231540';'RH_vertex_9221340'
    'RH_vertex_9221140';'RH_vertex_9211105';'RH_vertex_9182740';'RH_vertex_9180300';'RH_vertex_9180240';'RH_vertex_8204875'
    'RH_vertex_7874740';'RH_vertex_6558940';'RH_vertex_6553700';'RH_vertex_4924360';'RH_vertex_3988540';'RH_vertex_3988500';'RH_vertex_3957880'
    'RH_vertex_3302560';'RH_vertex_3302420';'RH_vertex_3296035';'RH_vertex_2647065';'RH_vertex_2146559';'RH_vertex_1351760';'RH_vertex_1326300'
    'RH_vertex_1316060';'RH_vertex_660700';'RH_vertex_6500'};

k = 50;
for i = 1:34
    
    RH_new_labels{i} = mydbscan(RH_vertexes{i}, k, knn_give_eps(RH_vertexes{i},k));
    disp(area_names{i});
    disp(unique(RH_new_labels{i}));
    noise = (numel(find(RH_new_labels{i} == 0)) / numel(RH_new_labels{i}))*100;
    disp(['noise: ' num2str(noise) '%']);
    LBL = RH_new_labels{i};
    maximum = 0;
    for j=1:numel(unique(LBL))-1
        class1 = (numel(find(LBL == j)) / numel(LBL))*100;
        if class1 >= maximum
           maximum = class1; 
        end
    end
    disp(['biggest cluster: ' num2str(maximum)]);
    
end


label_number = 0;
for i = 1:34
   t = numel(unique(RH_new_labels{i})); 
   label_number = label_number + t;
end

disp('Classification finished successfully!');
disp('Total number of classes:');
disp(label_number); % non-cortex is label 0


%%
disp('Gathering labels together...');

temp = label_number;
for i = 34:-1:1
    
    matrix = RH_new_labels{i};
    maximum = max(matrix);
    for j = maximum:-1:0
        matrix(find(matrix == j)) = temp;
        temp = temp - 1;
    end
    RH_new_labels{i} = matrix;
    
end

% %check the number of classes
% c = 0;
% for i = 1:34
%     c = c + numel(unique(RH_new_labels{i}));
% end


final_RH_labels = zeros(numel(RHthick) , 1);

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14474380)
            matrix = RH_new_labels{1};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14464220)
            matrix = RH_new_labels{2};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14433500)
            matrix = RH_new_labels{3};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14423100)
            matrix = RH_new_labels{4};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end 
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 13145750)
            matrix = RH_new_labels{5};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 11832480)
            matrix = RH_new_labels{6};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 11146310)
            matrix = RH_new_labels{7};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 10542100)
            matrix = RH_new_labels{8};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 10511485)
            matrix = RH_new_labels{9};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9231540)
            matrix = RH_new_labels{10};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9221340)
            matrix = RH_new_labels{11};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9221140)
            matrix = RH_new_labels{12};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9211105)
            matrix = RH_new_labels{13};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9182740)
            matrix = RH_new_labels{14};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9180300)
            matrix = RH_new_labels{15};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9180240)
            matrix = RH_new_labels{16};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 8204875)
            matrix = RH_new_labels{17};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 7874740)
            matrix = RH_new_labels{18};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 6558940)
            matrix = RH_new_labels{19};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 6553700)
            matrix = RH_new_labels{20};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 4924360)
            matrix = RH_new_labels{21};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3988540)
            matrix = RH_new_labels{22};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3988500)    
            matrix = RH_new_labels{23};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3957880)
            matrix = RH_new_labels{24};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3302560)
            matrix = RH_new_labels{25};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3302420)
            matrix = RH_new_labels{26};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3296035)
            matrix = RH_new_labels{27};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 2647065)
            matrix = RH_new_labels{28};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 2146559)
            matrix = RH_new_labels{29};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 1351760)
            matrix = RH_new_labels{30};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 1326300)
            matrix = RH_new_labels{31};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 1316060)
            matrix = RH_new_labels{32};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 660700)
            matrix = RH_new_labels{33};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 6500)
            matrix = RH_new_labels{34};
            final_RH_labels(i) = matrix(j);
            j=j+1;
        end
end

disp('Labels gathered successfully!');


%%
%assumption: max rgb codes: 200
disp('Creating annotation file...');
vertices = RH_vertices;
ct.numEntries = numel(unique(final_RH_labels)); %total classes + 1 because of unknown
ct.orig_tab = '/autofs/space/tanha_002/users/greve/fsdev.build/average/colortable_desikan_killiany.txt';

names = [];
for i=1:numel(unique(final_RH_labels))
   names = [names; {['area_' num2str(i-1)]}] ;
end
ct.struct_names = names;

tabel = zeros(numel(unique(final_RH_labels)) , 5); 
load('RGB');
for i = 1:size(tabel,1)
   tabel(i,1) = RGB(i,1);
   tabel(i,2) = RGB(i,2);
   tabel(i,3) = RGB(i,3);
end

tabel(:,5) = tabel(:,1) + tabel(:,2)*2^8 + tabel(:,3)*2^16;
ct.table = tabel;


a = find(unique(final_RH_labels))-1;
b = tabel(2:end,5);
n = numel(final_RH_labels);
m = numel(unique(final_RH_labels))-1;

for i = 1:n
   for j = 1:m
       if (final_RH_labels(i) == a(j))
           final_RH_labels(i) = b(j);
       end
   end
end

write_annotation('RH_annotation_reviewed.annot', vertices, final_RH_labels, ct)

disp('Annotation file is created successfully!');
disp('Finished');
toc;


%%
%proove best k is 100
%firstly, run Knn_Dist.m
clc;
values = zeros(4, 25);
k = 10:10:250;

subject = RH_vertexes{7};
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
