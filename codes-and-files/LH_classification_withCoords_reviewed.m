clc;
clear;
close all;
tic;
%%
disp('Loading data...');
load('E:\SBU_University\Master_Project\essentials\brain_data');
coords = freesurfer_read_surf('E:\SBU_University\Master_Project\essentials\lh.pial');
coords = coords * 10;
LH_label_unique = unique(LH_label);
disp('Data loaded successfully!');
%
disp('Isolating LH vertexes...');

LH_vertex_0 = [LHarea(find(LH_label == 0)) LHcurv(find(LH_label == 0)) LHthick(find(LH_label == 0)) LHvol(find(LH_label == 0)) coords((find(LH_label == 0)),:)];
LH_vertex_6500 = [LHarea(find(LH_label == 6500)) LHcurv(find(LH_label == 6500)) LHthick(find(LH_label == 6500)) LHvol(find(LH_label == 6500)) coords((find(LH_label == 6500)),:)];
LH_vertex_660700 = [LHarea(find(LH_label == 660700)) LHcurv(find(LH_label == 660700)) LHthick(find(LH_label == 660700)) LHvol(find(LH_label == 660700)) coords((find(LH_label == 660700)),:)];
LH_vertex_1316060 = [LHarea(find(LH_label == 1316060)) LHcurv(find(LH_label == 1316060)) LHthick(find(LH_label == 1316060)) LHvol(find(LH_label == 1316060)) coords((find(LH_label == 1316060)),:)];
LH_vertex_1326300 = [LHarea(find(LH_label == 1326300)) LHcurv(find(LH_label == 1326300)) LHthick(find(LH_label == 1326300)) LHvol(find(LH_label == 1326300)) coords((find(LH_label == 1326300)),:)];
LH_vertex_1351760 = [LHarea(find(LH_label == 1351760)) LHcurv(find(LH_label == 1351760)) LHthick(find(LH_label == 1351760)) LHvol(find(LH_label == 1351760)) coords((find(LH_label == 1351760)),:)];
LH_vertex_2146559 = [LHarea(find(LH_label == 2146559)) LHcurv(find(LH_label == 2146559)) LHthick(find(LH_label == 2146559)) LHvol(find(LH_label == 2146559)) coords((find(LH_label == 2146559)),:)];
LH_vertex_2647065 = [LHarea(find(LH_label == 2647065)) LHcurv(find(LH_label == 2647065)) LHthick(find(LH_label == 2647065)) LHvol(find(LH_label == 2647065)) coords((find(LH_label == 2647065)),:)];
LH_vertex_3296035 = [LHarea(find(LH_label == 3296035)) LHcurv(find(LH_label == 3296035)) LHthick(find(LH_label == 3296035)) LHvol(find(LH_label == 3296035)) coords((find(LH_label == 3296035)),:)];
LH_vertex_3302420 = [LHarea(find(LH_label == 3302420)) LHcurv(find(LH_label == 3302420)) LHthick(find(LH_label == 3302420)) LHvol(find(LH_label == 3302420)) coords((find(LH_label == 3302420)),:)];
LH_vertex_3302560 = [LHarea(find(LH_label == 3302560)) LHcurv(find(LH_label == 3302560)) LHthick(find(LH_label == 3302560)) LHvol(find(LH_label == 3302560)) coords((find(LH_label == 3302560)),:)];
LH_vertex_3957880 = [LHarea(find(LH_label == 3957880)) LHcurv(find(LH_label == 3957880)) LHthick(find(LH_label == 3957880)) LHvol(find(LH_label == 3957880)) coords((find(LH_label == 3957880)),:)];
LH_vertex_3988500 = [LHarea(find(LH_label == 3988500)) LHcurv(find(LH_label == 3988500)) LHthick(find(LH_label == 3988500)) LHvol(find(LH_label == 3988500)) coords((find(LH_label == 3988500)),:)];
LH_vertex_3988540 = [LHarea(find(LH_label == 3988540)) LHcurv(find(LH_label == 3988540)) LHthick(find(LH_label == 3988540)) LHvol(find(LH_label == 3988540)) coords((find(LH_label == 3988540)),:)];
LH_vertex_4924360 = [LHarea(find(LH_label == 4924360)) LHcurv(find(LH_label == 4924360)) LHthick(find(LH_label == 4924360)) LHvol(find(LH_label == 4924360)) coords((find(LH_label == 4924360)),:)];
LH_vertex_6553700 = [LHarea(find(LH_label == 6553700)) LHcurv(find(LH_label == 6553700)) LHthick(find(LH_label == 6553700)) LHvol(find(LH_label == 6553700)) coords((find(LH_label == 6553700)),:)];
LH_vertex_6558940 = [LHarea(find(LH_label == 6558940)) LHcurv(find(LH_label == 6558940)) LHthick(find(LH_label == 6558940)) LHvol(find(LH_label == 6558940)) coords((find(LH_label == 6558940)),:)];
LH_vertex_7874740 = [LHarea(find(LH_label == 7874740)) LHcurv(find(LH_label == 7874740)) LHthick(find(LH_label == 7874740)) LHvol(find(LH_label == 7874740)) coords((find(LH_label == 7874740)),:)];
LH_vertex_8204875 = [LHarea(find(LH_label == 8204875)) LHcurv(find(LH_label == 8204875)) LHthick(find(LH_label == 8204875)) LHvol(find(LH_label == 8204875)) coords((find(LH_label == 8204875)),:)];
LH_vertex_9180240 = [LHarea(find(LH_label == 9180240)) LHcurv(find(LH_label == 9180240)) LHthick(find(LH_label == 9180240)) LHvol(find(LH_label == 9180240)) coords((find(LH_label == 9180240)),:)];
LH_vertex_9180300 = [LHarea(find(LH_label == 9180300)) LHcurv(find(LH_label == 9180300)) LHthick(find(LH_label == 9180300)) LHvol(find(LH_label == 9180300)) coords((find(LH_label == 9180300)),:)];
LH_vertex_9182740 = [LHarea(find(LH_label == 9182740)) LHcurv(find(LH_label == 9182740)) LHthick(find(LH_label == 9182740)) LHvol(find(LH_label == 9182740)) coords((find(LH_label == 9182740)),:)];
LH_vertex_9211105 = [LHarea(find(LH_label == 9211105)) LHcurv(find(LH_label == 9211105)) LHthick(find(LH_label == 9211105)) LHvol(find(LH_label == 9211105)) coords((find(LH_label == 9211105)),:)];
LH_vertex_9221140 = [LHarea(find(LH_label == 9221140)) LHcurv(find(LH_label == 9221140)) LHthick(find(LH_label == 9221140)) LHvol(find(LH_label == 9221140)) coords((find(LH_label == 9221140)),:)];
LH_vertex_9221340 = [LHarea(find(LH_label == 9221340)) LHcurv(find(LH_label == 9221340)) LHthick(find(LH_label == 9221340)) LHvol(find(LH_label == 9221340)) coords((find(LH_label == 9221340)),:)];
LH_vertex_9231540 = [LHarea(find(LH_label == 9231540)) LHcurv(find(LH_label == 9231540)) LHthick(find(LH_label == 9231540)) LHvol(find(LH_label == 9231540)) coords((find(LH_label == 9231540)),:)];
LH_vertex_10511485 = [LHarea(find(LH_label == 10511485)) LHcurv(find(LH_label == 10511485)) LHthick(find(LH_label == 10511485)) LHvol(find(LH_label == 10511485)) coords((find(LH_label == 10511485)),:)];
LH_vertex_10542100 = [LHarea(find(LH_label == 10542100)) LHcurv(find(LH_label == 10542100)) LHthick(find(LH_label == 10542100)) LHvol(find(LH_label == 10542100)) coords((find(LH_label == 10542100)),:)];
LH_vertex_11146310 = [LHarea(find(LH_label == 11146310)) LHcurv(find(LH_label == 11146310)) LHthick(find(LH_label == 11146310)) LHvol(find(LH_label == 11146310)) coords((find(LH_label == 11146310)),:)];
LH_vertex_11832480 = [LHarea(find(LH_label == 11832480)) LHcurv(find(LH_label == 11832480)) LHthick(find(LH_label == 11832480)) LHvol(find(LH_label == 11832480)) coords((find(LH_label == 11832480)),:)];
LH_vertex_13145750 = [LHarea(find(LH_label == 13145750)) LHcurv(find(LH_label == 13145750)) LHthick(find(LH_label == 13145750)) LHvol(find(LH_label == 13145750)) coords((find(LH_label == 13145750)),:)];
LH_vertex_14423100 = [LHarea(find(LH_label == 14423100)) LHcurv(find(LH_label == 14423100)) LHthick(find(LH_label == 14423100)) LHvol(find(LH_label == 14423100)) coords((find(LH_label == 14423100)),:)];
LH_vertex_14433500 = [LHarea(find(LH_label == 14433500)) LHcurv(find(LH_label == 14433500)) LHthick(find(LH_label == 14433500)) LHvol(find(LH_label == 14433500)) coords((find(LH_label == 14433500)),:)];
LH_vertex_14464220 = [LHarea(find(LH_label == 14464220)) LHcurv(find(LH_label == 14464220)) LHthick(find(LH_label == 14464220)) LHvol(find(LH_label == 14464220)) coords((find(LH_label == 14464220)),:)];
LH_vertex_14474380 = [LHarea(find(LH_label == 14474380)) LHcurv(find(LH_label == 14474380)) LHthick(find(LH_label == 14474380)) LHvol(find(LH_label == 14474380)) coords((find(LH_label == 14474380)),:)];

disp('LH Vertexes isolated successfully!');

%%
disp('Labeling vertexes...');
dist=@(y,Y) pdist2(y,Y);

% label_0 = dbscan(LH_vertex_0, 50, 0.1, dist);
% disp('label_0:');
% disp(unique(label_0));

LH_vertexes = {LH_vertex_14474380;LH_vertex_14464220;LH_vertex_14433500;LH_vertex_14423100;LH_vertex_13145750
    LH_vertex_11832480;LH_vertex_11146310;LH_vertex_10542100;LH_vertex_10511485;LH_vertex_9231540;LH_vertex_9221340
    LH_vertex_9221140;LH_vertex_9211105;LH_vertex_9182740;LH_vertex_9180300;LH_vertex_9180240;LH_vertex_8204875
    LH_vertex_7874740;LH_vertex_6558940;LH_vertex_6553700;LH_vertex_4924360;LH_vertex_3988540;LH_vertex_3988500;LH_vertex_3957880
    LH_vertex_3302560;LH_vertex_3302420;LH_vertex_3296035;LH_vertex_2647065;LH_vertex_2146559;LH_vertex_1351760;LH_vertex_1326300
    LH_vertex_1316060;LH_vertex_660700;LH_vertex_6500};

%weightenning features
for i = 1:34
   matrix = LH_vertexes{i};
   matrix(:, 3) = matrix(:, 3) * 40;
   LH_vertexes{i} = matrix;
end


area_names = {'superiortemporal';'posteriorcingulate';'inferiorparietal';'precentral';'transversetemporal'
    'precuneus';'temporalpole';'superiorfrontal';'caudalanteriorcingulate';'fusiform';'parsopercularis'
    'superiorparietal';'lingual';'lateraloccipital';'isthmuscingulate';'rostralanteriorcingulate';'rostralmiddlefrontal'
    'inferiortemporal';'cuneus';'frontalpole';'medialorbitofrontal';'paracentral';'parahippocampal';'pericalcarine'
    'middletemporal';'parsorbitalis';'lateralorbitofrontal';'bankssts';'insula';'supramarginal';'parstriangularis'
    'postcentral';'entorhinal';'caudalmiddlefrontal'};

k = 100;
for i = 1:34
        if i == 20
           k = 50;
        else
           k = 100;
        end

        LH_new_labels{i} = mydbscan(LH_vertexes{i}, k, knn_give_eps(LH_vertexes{i},k));
        disp(area_names{i});
        disp(unique(LH_new_labels{i}));
        noise = (numel(find(LH_new_labels{i} == 0)) / numel(LH_new_labels{i}))*100;
        disp(['noise: ' num2str(noise) '%']);
        LBL = LH_new_labels{i};
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
   t = numel(unique(LH_new_labels{i})); 
   label_number = label_number + t;
end

disp('Classification finished successfully!');
disp('Total number of classes:');
disp(label_number); % non-cortex is label 0


%%
disp('Gathering labels together...');

temp = label_number;
for i = 34:-1:1
    
    matrix = LH_new_labels{i};
    maximum = max(matrix);
    for j = maximum:-1:0
        matrix(find(matrix == j)) = temp;
        temp = temp - 1;
    end
    LH_new_labels{i} = matrix;
    
end

% %check the number of classes
% c = 0;
% for i = 1:34
%     c = c + numel(unique(LH_new_labels{i}));
% end


final_LH_labels = zeros(numel(LHthick) , 1);

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14474380)
            matrix = LH_new_labels{1};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14464220)
            matrix = LH_new_labels{2};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14433500)
            matrix = LH_new_labels{3};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14423100)
            matrix = LH_new_labels{4};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end 
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 13145750)
            matrix = LH_new_labels{5};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 11832480)
            matrix = LH_new_labels{6};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 11146310)
            matrix = LH_new_labels{7};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 10542100)
            matrix = LH_new_labels{8};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 10511485)
            matrix = LH_new_labels{9};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9231540)
            matrix = LH_new_labels{10};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9221340)
            matrix = LH_new_labels{11};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9221140)
            matrix = LH_new_labels{12};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9211105)
            matrix = LH_new_labels{13};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9182740)
            matrix = LH_new_labels{14};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9180300)
            matrix = LH_new_labels{15};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9180240)
            matrix = LH_new_labels{16};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 8204875)
            matrix = LH_new_labels{17};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 7874740)
            matrix = LH_new_labels{18};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 6558940)
            matrix = LH_new_labels{19};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 6553700)
            matrix = LH_new_labels{20};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 4924360)
            matrix = LH_new_labels{21};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3988540)
            matrix = LH_new_labels{22};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3988500)    
            matrix = LH_new_labels{23};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3957880)
            matrix = LH_new_labels{24};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3302560)
            matrix = LH_new_labels{25};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3302420)
            matrix = LH_new_labels{26};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3296035)
            matrix = LH_new_labels{27};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 2647065)
            matrix = LH_new_labels{28};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 2146559)
            matrix = LH_new_labels{29};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 1351760)
            matrix = LH_new_labels{30};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 1326300)
            matrix = LH_new_labels{31};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 1316060)
            matrix = LH_new_labels{32};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 660700)
            matrix = LH_new_labels{33};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 6500)
            matrix = LH_new_labels{34};
            final_LH_labels(i) = matrix(j);
            j=j+1;
        end
end

disp('Labels gathered successfully!');


%%
%assumption: max rgb codes: 200
disp('Creating annotation file...');
vertices = LH_vertices;
ct.numEntries = numel(unique(final_LH_labels)); %total classes + 1 because of unknown
ct.orig_tab = '/autofs/space/tanha_002/users/greve/fsdev.build/average/colortable_desikan_killiany.txt';

names = [];
for i=1:numel(unique(final_LH_labels))
   names = [names; {['area_' num2str(i-1)]}] ;
end
ct.struct_names = names;

tabel = zeros(numel(unique(final_LH_labels)) , 5); 
load('RGB');
for i = 1:size(tabel,1)
   tabel(i,1) = RGB(i,1);
   tabel(i,2) = RGB(i,2);
   tabel(i,3) = RGB(i,3);
end

tabel(:,5) = tabel(:,1) + tabel(:,2)*2^8 + tabel(:,3)*2^16;
ct.table = tabel;


a = find(unique(final_LH_labels))-1;
b = tabel(2:end,5);
n = numel(final_LH_labels);
m = numel(unique(final_LH_labels))-1;

for i = 1:n
   for j = 1:m
       if (final_LH_labels(i) == a(j))
           final_LH_labels(i) = b(j);
       end
   end
end

write_annotation('LH_annotation_reviewed.annot', vertices, final_LH_labels, ct)

disp('Annotation file is created successfully!');
disp('Finished');
toc;


%%
%proove best k is 100
%firstly, run Knn_Dist.m
%clc;
% close all
% 
% for u=1:34
%     k = 10:10:200;
%     values = zeros(4, numel(k));
% 
%     u = 33;
%     subject = LH_vertexes{u};
% 
%     %fig = figure('Position', get(0, 'Screensize'));
%     fig = figure();
%     for t = 1:numel(k)
%         LBL = mydbscan(subject, k(t), knn_give_eps(subject,k(t)));
%         noise = (numel(find(LBL == 0)) / numel(LBL))*100;
%         maximum = 0;
%         for i=1:numel(unique(LBL'))-1
%             class1 = (numel(find(LBL == i)) / numel(LBL))*100;
%             if class1 >= maximum
%                maximum = class1; 
%             end
%         end
% 
%         values(1,t) = knn_give_eps(subject,k(t));
%         values(2,t) = numel(unique(LBL'));
%         values(3,t) = noise;
%         values(4,t) = maximum;
% 
%     end
%     
%     subplot(2,2,1);
%     plot(k,values(2,:),'linewidth', 2, 'color', 'k');
%     ylabel('No. of clusters');
%     xlabel("K values");
%     title('A');
%     subplot(2,2,2);
%     plot(k,values(3,:),'linewidth', 2, 'color', 'k');
%     ylabel('Noise (%)');
%     xlabel("K values");
%     title('B');
%     subplot(2,2,3);
%     plot(k,values(4,:),'linewidth', 2, 'color', 'k');
%     ylabel('% of all points');
%     xlabel("K values");
%     title('C');
%     save_address = ['C:\Users\ASUS\Desktop\' 'left_' area_names{u} '.jpg'];
%     saveas(fig, save_address);
%     close all;
% end