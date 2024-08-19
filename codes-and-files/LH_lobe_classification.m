clc;
clear;
close all;
tic;
%%
disp('Loading data...');
load('/work/TahaPourmaohammad#7093/BigBrain_Project/essentials/brain_data');
LH_coords = freesurfer_read_surf('/work/TahaPourmaohammad#7093/BigBrain_Project/essentials/lh.pial');
% LH_coords = LH_coords * 10;
LH_label_unique = unique(LH_label);
disp('Data loaded successfully!');
%
disp('Isolating LH vertexes...');

LH_Lobe_Frontal = [LHarea(find(LH_label == 10542100)) LHcurv(find(LH_label == 10542100)) LHthick(find(LH_label == 10542100)) LHvol(find(LH_label == 10542100)) LH_coords((find(LH_label == 10542100)),:)
                   LHarea(find(LH_label == 8204875)) LHcurv(find(LH_label == 8204875)) LHthick(find(LH_label == 8204875)) LHvol(find(LH_label == 8204875)) LH_coords((find(LH_label == 8204875)),:)
                   LHarea(find(LH_label == 6500)) LHcurv(find(LH_label == 6500)) LHthick(find(LH_label == 6500)) LHvol(find(LH_label == 6500)) LH_coords((find(LH_label == 6500)),:)
                   LHarea(find(LH_label == 9221340)) LHcurv(find(LH_label == 9221340)) LHthick(find(LH_label == 9221340)) LHvol(find(LH_label == 9221340)) LH_coords((find(LH_label == 9221340)),:)
                   LHarea(find(LH_label == 1326300)) LHcurv(find(LH_label == 1326300)) LHthick(find(LH_label == 1326300)) LHvol(find(LH_label == 1326300)) LH_coords((find(LH_label == 1326300)),:)
                   LHarea(find(LH_label == 3302420)) LHcurv(find(LH_label == 3302420)) LHthick(find(LH_label == 3302420)) LHvol(find(LH_label == 3302420)) LH_coords((find(LH_label == 3302420)),:)
                   LHarea(find(LH_label == 3296035)) LHcurv(find(LH_label == 3296035)) LHthick(find(LH_label == 3296035)) LHvol(find(LH_label == 3296035)) LH_coords((find(LH_label == 3296035)),:)
                   LHarea(find(LH_label == 4924360)) LHcurv(find(LH_label == 4924360)) LHthick(find(LH_label == 4924360)) LHvol(find(LH_label == 4924360)) LH_coords((find(LH_label == 4924360)),:)
                   LHarea(find(LH_label == 14423100)) LHcurv(find(LH_label == 14423100)) LHthick(find(LH_label == 14423100)) LHvol(find(LH_label == 14423100)) LH_coords((find(LH_label == 14423100)),:)
                   LHarea(find(LH_label == 3988540)) LHcurv(find(LH_label == 3988540)) LHthick(find(LH_label == 3988540)) LHvol(find(LH_label == 3988540)) LH_coords((find(LH_label == 3988540)),:)
                   LHarea(find(LH_label == 6553700)) LHcurv(find(LH_label == 6553700)) LHthick(find(LH_label == 6553700)) LHvol(find(LH_label == 6553700)) LH_coords((find(LH_label == 6553700)),:)
                   LHarea(find(LH_label == 9180240)) LHcurv(find(LH_label == 9180240)) LHthick(find(LH_label == 9180240)) LHvol(find(LH_label == 9180240)) LH_coords((find(LH_label == 9180240)),:)
                   LHarea(find(LH_label == 10511485)) LHcurv(find(LH_label == 10511485)) LHthick(find(LH_label == 10511485)) LHvol(find(LH_label == 10511485)) LH_coords((find(LH_label == 10511485)),:)];
               
LH_Lobe_Parietal = [LHarea(find(LH_label == 9221140)) LHcurv(find(LH_label == 9221140)) LHthick(find(LH_label == 9221140)) LHvol(find(LH_label == 9221140)) LH_coords((find(LH_label == 9221140)),:)
                    LHarea(find(LH_label == 14433500)) LHcurv(find(LH_label == 14433500)) LHthick(find(LH_label == 14433500)) LHvol(find(LH_label == 14433500)) LH_coords((find(LH_label == 14433500)),:)
                    LHarea(find(LH_label == 1351760)) LHcurv(find(LH_label == 1351760)) LHthick(find(LH_label == 1351760)) LHvol(find(LH_label == 1351760)) LH_coords((find(LH_label == 1351760)),:)
                    LHarea(find(LH_label == 1316060)) LHcurv(find(LH_label == 1316060)) LHthick(find(LH_label == 1316060)) LHvol(find(LH_label == 1316060)) LH_coords((find(LH_label == 1316060)),:)
                    LHarea(find(LH_label == 11832480)) LHcurv(find(LH_label == 11832480)) LHthick(find(LH_label == 11832480)) LHvol(find(LH_label == 11832480)) LH_coords((find(LH_label == 11832480)),:)
                    LHarea(find(LH_label == 14464220)) LHcurv(find(LH_label == 14464220)) LHthick(find(LH_label == 14464220)) LHvol(find(LH_label == 14464220)) LH_coords((find(LH_label == 14464220)),:)
                    LHarea(find(LH_label == 9180300)) LHcurv(find(LH_label == 9180300)) LHthick(find(LH_label == 9180300)) LHvol(find(LH_label == 9180300)) LH_coords((find(LH_label == 9180300)),:)];
                
LH_Lobe_Temporal = [LHarea(find(LH_label == 14474380)) LHcurv(find(LH_label == 14474380)) LHthick(find(LH_label == 14474380)) LHvol(find(LH_label == 14474380)) LH_coords((find(LH_label == 14474380)),:)
                    LHarea(find(LH_label == 3302560)) LHcurv(find(LH_label == 3302560)) LHthick(find(LH_label == 3302560)) LHvol(find(LH_label == 3302560)) LH_coords((find(LH_label == 3302560)),:)
                    LHarea(find(LH_label == 7874740)) LHcurv(find(LH_label == 7874740)) LHthick(find(LH_label == 7874740)) LHvol(find(LH_label == 7874740)) LH_coords((find(LH_label == 7874740)),:)
                    LHarea(find(LH_label == 2647065)) LHcurv(find(LH_label == 2647065)) LHthick(find(LH_label == 2647065)) LHvol(find(LH_label == 2647065)) LH_coords((find(LH_label == 2647065)),:)
                    LHarea(find(LH_label == 9231540)) LHcurv(find(LH_label == 9231540)) LHthick(find(LH_label == 9231540)) LHvol(find(LH_label == 9231540)) LH_coords((find(LH_label == 9231540)),:)
                    LHarea(find(LH_label == 13145750)) LHcurv(find(LH_label == 13145750)) LHthick(find(LH_label == 13145750)) LHvol(find(LH_label == 13145750)) LH_coords((find(LH_label == 13145750)),:)
                    LHarea(find(LH_label == 660700)) LHcurv(find(LH_label == 660700)) LHthick(find(LH_label == 660700)) LHvol(find(LH_label == 660700)) LH_coords((find(LH_label == 660700)),:)
                    LHarea(find(LH_label == 11146310)) LHcurv(find(LH_label == 11146310)) LHthick(find(LH_label == 11146310)) LHvol(find(LH_label == 11146310)) LH_coords((find(LH_label == 11146310)),:)
                    LHarea(find(LH_label == 3988500)) LHcurv(find(LH_label == 3988500)) LHthick(find(LH_label == 3988500)) LHvol(find(LH_label == 3988500)) LH_coords((find(LH_label == 3988500)),:)];
                
LH_Lobe_Occipital = [LHarea(find(LH_label == 9182740)) LHcurv(find(LH_label == 9182740)) LHthick(find(LH_label == 9182740)) LHvol(find(LH_label == 9182740)) LH_coords((find(LH_label == 9182740)),:)
                     LHarea(find(LH_label == 9211105)) LHcurv(find(LH_label == 9211105)) LHthick(find(LH_label == 9211105)) LHvol(find(LH_label == 9211105)) LH_coords((find(LH_label == 9211105)),:)
                     LHarea(find(LH_label == 6558940)) LHcurv(find(LH_label == 6558940)) LHthick(find(LH_label == 6558940)) LHvol(find(LH_label == 6558940)) LH_coords((find(LH_label == 6558940)),:)
                     LHarea(find(LH_label == 3957880)) LHcurv(find(LH_label == 3957880)) LHthick(find(LH_label == 3957880)) LHvol(find(LH_label == 3957880)) LH_coords((find(LH_label == 3957880)),:)];
                
                 


disp('LH Vertexes isolated successfully!');

%%
disp('Labeling vertexes...');
%dist=@(y,Y) pdist2(y,Y);


k = 13;

%k = 2 * size(LH_Lobe_Frontal,1) - 1;
label_Frontal = mydbscan(LH_Lobe_Frontal, k, knn_give_eps(LH_Lobe_Frontal,k));
disp('label_Frontal clusters:');
disp(numel(unique(label_Frontal')));
noise = (numel(find(label_Frontal == 0)) / numel(label_Frontal))*100;
disp(['noise: ' num2str(noise) '%']);
LBL = label_Frontal;
maximum = 0;
for j=1:numel(unique(LBL))-1
    class1 = (numel(find(LBL == j)) / numel(LBL))*100;
    if class1 >= maximum
        maximum = class1;
    end
end
disp(['biggest cluster: ' num2str(maximum)]);


%k = 2 * size(LH_Lobe_Parietal,1) - 1;
label_Parietal = mydbscan(LH_Lobe_Parietal, k, knn_give_eps(LH_Lobe_Parietal,k));
disp('label_Parietal clusters:');
disp(numel(unique(label_Parietal')));
noise = (numel(find(label_Parietal == 0)) / numel(label_Parietal))*100;
disp(['noise: ' num2str(noise) '%']);
LBL = label_Parietal;
maximum = 0;
for j=1:numel(unique(LBL))-1
    class1 = (numel(find(LBL == j)) / numel(LBL))*100;
    if class1 >= maximum
        maximum = class1;
    end
end
disp(['biggest cluster: ' num2str(maximum)]);


%k = 2 * size(LH_Lobe_Temporal,1) - 1;
label_Temporal = mydbscan(LH_Lobe_Temporal, k, knn_give_eps(LH_Lobe_Temporal,k));
disp('label_Temporal clusters:');
disp(numel(unique(label_Temporal')));
noise = (numel(find(label_Temporal == 0)) / numel(label_Temporal))*100;
disp(['noise: ' num2str(noise) '%']);
LBL = label_Temporal;
maximum = 0;
for j=1:numel(unique(LBL))-1
    class1 = (numel(find(LBL == j)) / numel(LBL))*100;
    if class1 >= maximum
        maximum = class1;
    end
end
disp(['biggest cluster: ' num2str(maximum)]);


%k = 2 * size(LH_Lobe_Occipital,1) - 1;
label_Occipital = mydbscan(LH_Lobe_Occipital, k, knn_give_eps(LH_Lobe_Occipital,k));
disp('label_Occipital clusters:');
disp(numel(unique(label_Occipital')));
noise = (numel(find(label_Occipital == 0)) / numel(label_Occipital))*100;
disp(['noise: ' num2str(noise) '%']);
LBL = label_Occipital;
maximum = 0;
for j=1:numel(unique(LBL))-1
    class1 = (numel(find(LBL == j)) / numel(LBL))*100;
    if class1 >= maximum
        maximum = class1;
    end
end
disp(['biggest cluster: ' num2str(maximum)]);


disp("Total number of clusters: ")
label_number = 0;
label_number = numel(unique(label_Frontal)) + numel(unique(label_Parietal)) + numel(unique(label_Temporal)) + numel(unique(label_Occipital)); 
disp(label_number)


disp('Gathering labels together...');

temp = label_number;

matrix = label_Frontal;
maximum = max(matrix);
for j = maximum:-1:0
    matrix(find(matrix == j)) = temp;
    temp = temp - 1;
end
label_Frontal_new = matrix;

matrix = label_Parietal;
maximum = max(matrix);
for j = maximum:-1:0
    matrix(find(matrix == j)) = temp;
    temp = temp - 1;
end
label_Parietal_new = matrix;

matrix = label_Temporal;
maximum = max(matrix);
for j = maximum:-1:0
    matrix(find(matrix == j)) = temp;
    temp = temp - 1;
end
label_Temporal_new = matrix;

matrix = label_Occipital;
maximum = max(matrix);
for j = maximum:-1:0
    matrix(find(matrix == j)) = temp;
    temp = temp - 1;
end
label_Occipital_new = matrix;
    





final_LH_labels = zeros(numel(LHthick) , 1);

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 10542100)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 8204875)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 6500)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 9221340)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 1326300)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 3302420)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 3296035)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 4924360)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 14423100)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 3988540)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 6553700)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 9180240)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 10511485)
            final_LH_labels(i) = label_Frontal_new(j);
            j=j+1;
        end
end


j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9221140)
            final_LH_labels(i) = label_Parietal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 14433500)
            final_LH_labels(i) = label_Parietal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 1351760)
            final_LH_labels(i) = label_Parietal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 1316060)
            final_LH_labels(i) = label_Parietal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 11832480)
            final_LH_labels(i) = label_Parietal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 14464220)
            final_LH_labels(i) = label_Parietal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 9180300)
            final_LH_labels(i) = label_Parietal_new(j);
            j=j+1;
        end
end


j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14474380)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 3302560)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 7874740)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 2647065)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 9231540)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 13145750)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 660700)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 11146310)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 3988500)
            final_LH_labels(i) = label_Temporal_new(j);
            j=j+1;
        end
end


j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9182740)
            final_LH_labels(i) = label_Occipital_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 9211105)
            final_LH_labels(i) = label_Occipital_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 6558940)
            final_LH_labels(i) = label_Occipital_new(j);
            j=j+1;
        end
end
for i=1:numel(LH_label)
        if(LH_label(i) == 3957880)
            final_LH_labels(i) = label_Occipital_new(j);
            j=j+1;
        end
end

disp('Labels gathered successfully!');


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

write_annotation('LH_annotation_LOB.annot', vertices, final_LH_labels, ct)

disp('Annotation file is created successfully!');
disp('Finished');
toc;

toc;
runtime = toc/60;
disp(['Run time in minutes:' num2str(runtime)])

                
