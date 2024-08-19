clc;
clear;
close all;
tic;
%%
disp('Loading data...');
load('/work/TahaPourmaohammad#7093/BigBrain_Project/essentials/brain_data');
LHcoords = freesurfer_read_surf('/work/TahaPourmaohammad#7093/BigBrain_Project/essentials/lh.pial');
LGI = read_curv('/work/TahaPourmaohammad#7093/BigBrain_Project/output2/surf/lh.pial_lgi');
LH_label_unique = unique(LH_label);
disp('Data loaded successfully!');
%
disp('Gathering whole brain features...');

LH_whole_brain = [LHarea LHcurv LHthick LHvol LHcoords*60];
% g_m = (abs(LH_whole_brain(:,5).*LH_whole_brain(:,6).*LH_whole_brain(:,7))).^(1/3);
% LH_whole_brain = [LHarea LHcurv LHthick LHvol g_m*30];


disp('Done');

%%
disp('Applying DB-Scan...');
%dist=@(y,Y) pdist2(y,Y);


k = 120;

LH_new_labels = dbscan(LH_whole_brain, knn_give_eps(LH_whole_brain, k), k+5);
LH_new_labels(find(LH_label == 0)) = 0;
disp('Number of clusters: ')
disp(numel(unique(LH_new_labels)) - 1); %exclude label 0
noise = (numel(find(LH_new_labels == -1)) / (numel(LH_new_labels) - numel(find(LH_new_labels == 0))))*100;
disp(['noise: ' num2str(noise) '%']);
LBL = LH_new_labels;
maximum = 0;
for j=1:numel(unique(LBL))-2 %exclude noise and label 0
    class1 = (numel(find(LBL == j)) / (numel(LBL) - numel(find(LBL == 0))))*100;
    if class1 >= maximum
        maximum = class1; 
    end
end

LH_new_labels(find(LH_new_labels == -1)) = 0;

disp(['biggest cluster: ' num2str(maximum)]);  

disp('Classification finished successfully!');
final_LH_labels = LH_new_labels;

final_LH_labels(find(LH_label==0)) = 0;

% counter = 1;
% final_LH_labels = zeros(length(LH_label), 1);
% for i = 1:length(LH_label)
%     if (LH_label(i) ~= 0)
%         final_LH_labels(i) = LH_new_labels(counter);
%         counter = counter + 1;
%     end
% end

% temp = numel(unique(LH_new_labels));
% 
% matrix = LH_new_labels;
% maximum = max(matrix);
% for j = maximum:-1:0
%     matrix(find(matrix == j)) = temp;
%     temp = temp - 1;
% end
% final_LH_labels = matrix;

%%
%assumption: max rgb codes: 400
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

write_annotation('LH_annotation_whole_brain.annot', vertices, final_LH_labels, ct)

disp('Annotation file is created successfully!');
disp('Finished');


toc;
runtime = toc/60;
disp(['Run time in minutes:' num2str(runtime)])

                
