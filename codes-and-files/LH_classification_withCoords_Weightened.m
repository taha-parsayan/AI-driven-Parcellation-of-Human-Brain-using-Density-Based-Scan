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

% label_0 = dbscan(LH_vertex_0, 50, 0.1, dist);
% disp('label_0:');
% disp(unique(label_0));

label_6500 = mydbscan(LH_vertex_6500, 100, 22);
disp('label_6500:');
disp(unique(label_6500'));
noise = (numel(find(label_6500 == 0)) / numel(label_6500))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_6500 == 1)) / numel(label_6500))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_660700 = mydbscan(LH_vertex_660700, 100, 21);
disp('label_660700:');
disp(unique(label_660700'));
noise = (numel(find(label_660700 == 0)) / numel(label_660700))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_660700 == 2)) / numel(label_660700))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_1316060 = mydbscan(LH_vertex_1316060, 100, 20.5);
disp('label_1316060:');
disp(unique(label_1316060'));
noise = (numel(find(label_1316060 == 0)) / numel(label_1316060))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_1316060 == 1)) / numel(label_1316060))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_1326300 = mydbscan(LH_vertex_1326300, 100, 20.5);
disp('label_1326300:');
disp(unique(label_1326300'));
noise = (numel(find(label_1326300 == 0)) / numel(label_1326300))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_1326300 == 1)) / numel(label_1326300))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_1351760 = mydbscan(LH_vertex_1351760, 100, 19.5);
disp('label_1351760:');
disp(unique(label_1351760'));
noise = (numel(find(label_1351760 == 0)) / numel(label_1351760))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_1351760 == 1)) / numel(label_1351760))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_2146559 = mydbscan(LH_vertex_2146559, 100, 21);
disp('label_2146559:');
disp(unique(label_2146559'));
noise = (numel(find(label_2146559 == 0)) / numel(label_2146559))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_2146559 == 1)) / numel(label_2146559))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_2647065 = mydbscan(LH_vertex_2647065, 100, 21);
disp('label_2647065:');
disp(unique(label_2647065'));
noise = (numel(find(label_2647065 == 0)) / numel(label_2647065))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_2647065 == 1)) / numel(label_2647065))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_3296035 = mydbscan(LH_vertex_3296035, 100, 19);
disp('label_3296035:');
disp(unique(label_3296035'));
noise = (numel(find(label_3296035 == 0)) / numel(label_3296035))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_3296035 == 1)) / numel(label_3296035))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_3302420 = mydbscan(LH_vertex_3302420, 100, 23);
disp('label_3302420:');
disp(unique(label_3302420'));
noise = (numel(find(label_3302420 == 0)) / numel(label_3302420))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_3302420 == 1)) / numel(label_3302420))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_3302560 = mydbscan(LH_vertex_3302560, 100, 21);
disp('label_3302560:');
disp(unique(label_3302560'));
noise = (numel(find(label_3302560 == 0)) / numel(label_3302560))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_3302560 == 1)) / numel(label_3302560))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_3957880 = mydbscan(LH_vertex_3957880, 100, 20);
disp('label_3957880:');
disp(unique(label_3957880'));
noise = (numel(find(label_3957880 == 0)) / numel(label_3957880))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_3957880 == 1)) / numel(label_3957880))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_3988500 = mydbscan(LH_vertex_3988500, 100, 24);
disp('label_3988500:');
disp(unique(label_3988500'));
noise = (numel(find(label_3988500 == 0)) / numel(label_3988500))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_3988500 == 1)) / numel(label_3988500))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_3988540 = mydbscan(LH_vertex_3988540, 100, 18.5);
disp('label_3988540:');
disp(unique(label_3988540'));
noise = (numel(find(label_3988540 == 0)) / numel(label_3988540))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_3988540 == 1)) / numel(label_3988540))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_4924360 = mydbscan(LH_vertex_4924360, 100, 20);
disp('label_4924360:');
disp(unique(label_4924360'));
noise = (numel(find(label_4924360 == 0)) / numel(label_4924360))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_4924360 == 1)) / numel(label_4924360))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_6553700 = mydbscan(LH_vertex_6553700, 100, 22);
disp('label_6553700:');
disp(unique(label_6553700'));
noise = (numel(find(label_6553700 == 0)) / numel(label_6553700))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_6553700 == 1)) / numel(label_6553700))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_6558940 = mydbscan(LH_vertex_6558940, 100, 20);
disp('label_6558940:');
disp(unique(label_6558940'));
noise = (numel(find(label_6558940 == 0)) / numel(label_6558940))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_6558940 == 1)) / numel(label_6558940))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_7874740 = mydbscan(LH_vertex_7874740, 100, 21.5);
disp('label_7874740:');
disp(unique(label_7874740'));
noise = (numel(find(label_7874740 == 0)) / numel(label_7874740))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_7874740 == 1)) / numel(label_7874740))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_8204875 = mydbscan(LH_vertex_8204875, 100, 19);
disp('label_8204875:');
disp(unique(label_8204875'));
noise = (numel(find(label_8204875 == 0)) / numel(label_8204875))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_8204875 == 1)) / numel(label_8204875))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_9180240 = mydbscan(LH_vertex_9180240, 100, 18.7);
disp('label_9180240:');
disp(unique(label_9180240'));
noise = (numel(find(label_9180240 == 0)) / numel(label_9180240))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_9180240 == 2)) / numel(label_9180240))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_9180300 = mydbscan(LH_vertex_9180300, 100, 20);
disp('label_9180300:');
disp(unique(label_9180300'));
noise = (numel(find(label_9180300 == 0)) / numel(label_9180300))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_9180300 == 1)) / numel(label_9180300))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_9182740 = mydbscan(LH_vertex_9182740, 100, 21);
disp('label_9182740:');
disp(unique(label_9182740'));
noise = (numel(find(label_9182740 == 0)) / numel(label_9182740))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_9182740 == 1)) / numel(label_9182740))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_9211105 = mydbscan(LH_vertex_9211105, 100, 20);
disp('label_9211105:');
disp(unique(label_9211105'));
noise = (numel(find(label_9211105 == 0)) / numel(label_9211105))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_9211105 == 1)) / numel(label_9211105))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_9221140 = mydbscan(LH_vertex_9221140, 100, 19.5);
disp('label_9221140:');
disp(unique(label_9221140'));
noise = (numel(find(label_9221140 == 0)) / numel(label_9221140))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_9221140 == 1)) / numel(label_9221140))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_9221340 = mydbscan(LH_vertex_9221340, 100, 20);
disp('label_9221340:');
disp(unique(label_9221340'));
noise = (numel(find(label_9221340 == 0)) / numel(label_9221340))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_9221340 == 1)) / numel(label_9221340))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_9231540 = mydbscan(LH_vertex_9231540, 100, 22);
disp('label_9231540:');
disp(unique(label_9231540'));
noise = (numel(find(label_9231540 == 0)) / numel(label_9231540))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_9231540 == 1)) / numel(label_9231540))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_10511485 = mydbscan(LH_vertex_10511485, 100, 19.5);
disp('label_10511485:');
disp(unique(label_10511485'));
noise = (numel(find(label_10511485 == 0)) / numel(label_10511485))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_10511485 == 1)) / numel(label_10511485))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_10542100 = mydbscan(LH_vertex_10542100, 100, 19.5);
disp('label_10542100:');
disp(unique(label_10542100'));
noise = (numel(find(label_10542100 == 0)) / numel(label_10542100))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_10542100 == 1)) / numel(label_10542100))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_11146310 = mydbscan(LH_vertex_11146310, 100, 22);
disp('label_11146310:');
disp(unique(label_11146310'));
noise = (numel(find(label_11146310 == 0)) / numel(label_11146310))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_11146310 == 1)) / numel(label_11146310))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_11832480 = mydbscan(LH_vertex_11832480, 100, 19.5);
disp('label_11832480:');
disp(unique(label_11832480')); 
noise = (numel(find(label_11832480 == 0)) / numel(label_11832480))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_11832480 == 1)) / numel(label_11832480))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_13145750 = mydbscan(LH_vertex_13145750, 100, 22);
disp('label_13145750:');
disp(unique(label_13145750'));
noise = (numel(find(label_13145750 == 0)) / numel(label_13145750))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_13145750 == 1)) / numel(label_13145750))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_14423100 = mydbscan(LH_vertex_14423100, 100, 21.5);
disp('label_14423100:');
disp(unique(label_14423100')); 
noise = (numel(find(label_14423100 == 0)) / numel(label_14423100))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_14423100 == 1)) / numel(label_14423100))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_14433500 = mydbscan(LH_vertex_14433500, 100, 21.5);
disp('label_14433500:');
disp(unique(label_14433500')); 
noise = (numel(find(label_14433500 == 0)) / numel(label_14433500))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_14433500 == 1)) / numel(label_14433500))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_14464220 = mydbscan(LH_vertex_14464220, 100, 18.5);
disp('label_14464220:');
disp(unique(label_14464220'));
noise = (numel(find(label_14464220 == 0)) / numel(label_14464220))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_14464220 == 1)) / numel(label_14464220))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_14474380 = mydbscan(LH_vertex_14474380, 100, 21.5);
disp('label_14474380:');
disp(unique(label_14474380'));
noise = (numel(find(label_14474380 == 0)) / numel(label_14474380))*100;
disp(['noise: ' num2str(noise) '%']);
class1 = (numel(find(label_14474380 == 1)) / numel(label_14474380))*100;
disp(['class1: ' num2str(class1) '%']);
disp(' ');

label_number = numel(unique(label_14474380')) + numel(unique(label_14464220')) + numel(unique(label_14433500')) + numel(unique(label_14423100')) + numel(unique(label_13145750')) + numel(unique(label_11832480')) ...
    + numel(unique(label_11146310')) + numel(unique(label_10542100')) + numel(unique(label_10511485')) + numel(unique(label_9231540')) + numel(unique(label_9221340')) + numel(unique(label_9221140')) ...
    + numel(unique(label_9211105')) + numel(unique(label_9182740')) + numel(unique(label_9180300')) + numel(unique(label_9180240')) + numel(unique(label_8204875')) + numel(unique(label_7874740')) + numel(unique(label_6558940')) ...
    + numel(unique(label_6553700')) + numel(unique(label_4924360')) + numel(unique(label_3988540')) + numel(unique(label_3988500')) + numel(unique(label_3957880')) + numel(unique(label_3302560')) + numel(unique(label_3302420')) ...
    + numel(unique(label_3296035')) + numel(unique(label_2647065')) + numel(unique(label_2146559')) + numel(unique(label_1351760')) + numel(unique(label_1326300')) + numel(unique(label_1316060')) + numel(unique(label_660700')) ...
    + numel(unique(label_6500'));

disp('Classification finished successfully!');
disp('Total number of classes:');
disp(label_number+1); % +1 is because of non-cortex label 0


%%
disp('Gathering labels together...');

label_10511485(find(label_10511485 == 5)) = 6; label_10511485(find(label_10511485 == 4)) = 5; label_10511485(find(label_10511485 == 3)) = 4;
label_10511485(find(label_10511485 == 2)) = 3; label_10511485(find(label_10511485 == 1)) = 2; label_10511485(find(label_10511485 == 0)) = 1;

label_10542100(find(label_10542100 == 0)) = 7; label_10542100(find(label_10542100 == 1)) = 8; label_10542100(find(label_10542100 == 2)) = 9;
label_10542100(find(label_10542100 == 3)) = 10; label_10542100(find(label_10542100 == 4)) = 11; label_10542100(find(label_10542100 == 5)) = 12;

label_11146310(find(label_11146310 == 0)) = 13; label_11146310(find(label_11146310 == 1)) = 14; label_11146310(find(label_11146310 == 2)) = 15;
label_11146310(find(label_11146310 == 3)) = 16; label_11146310(find(label_11146310 == 4)) = 17; label_11146310(find(label_11146310 == 5)) = 18;

label_11832480(find(label_11832480 == 0)) = 19; label_11832480(find(label_11832480 == 1)) = 20; label_11832480(find(label_11832480 == 2)) = 21;
label_11832480(find(label_11832480 == 3)) = 22; label_11832480(find(label_11832480 == 4)) = 23; label_11832480(find(label_11832480 == 5)) = 24;

label_13145750(find(label_13145750 == 0)) = 25; label_13145750(find(label_13145750 == 1)) = 26; label_13145750(find(label_13145750 == 2)) = 27;
label_13145750(find(label_13145750 == 3)) = 28; label_13145750(find(label_13145750 == 4)) = 29; label_13145750(find(label_13145750 == 5)) = 30;

label_1316060(find(label_1316060 == 0)) = 31; label_1316060(find(label_1316060 == 1)) = 32; label_1316060(find(label_1316060 == 2)) = 33;
label_1316060(find(label_1316060 == 3)) = 34; label_1316060(find(label_1316060 == 4)) = 35; label_1316060(find(label_1316060 == 5)) = 36;

label_1326300(find(label_1326300 == 0)) = 37; label_1326300(find(label_1326300 == 1)) = 38; label_1326300(find(label_1326300 == 2)) = 39;
label_1326300(find(label_1326300 == 3)) = 40; label_1326300(find(label_1326300 == 4)) = 41; label_1326300(find(label_1326300 == 5)) = 42;

label_1351760(find(label_1351760 == 0)) = 43; label_1351760(find(label_1351760 == 1)) = 44; label_1351760(find(label_1351760 == 2)) = 45;
label_1351760(find(label_1351760 == 3)) = 46; label_1351760(find(label_1351760 == 4)) = 47; label_1351760(find(label_1351760 == 5)) = 48;

label_14423100(find(label_14423100 == 0)) = 49; label_14423100(find(label_14423100 == 1)) = 50; label_14423100(find(label_14423100 == 2)) = 51;
label_14423100(find(label_14423100 == 3)) = 52; label_14423100(find(label_14423100 == 4)) = 53; label_14423100(find(label_14423100 == 5)) = 54;

label_14433500(find(label_14433500 == 0)) = 55; label_14433500(find(label_14433500 == 1)) = 56; label_14433500(find(label_14433500 == 2)) = 57;
label_14433500(find(label_14433500 == 3)) = 58; label_14433500(find(label_14433500 == 4)) = 59; label_14433500(find(label_14433500 == 5)) = 60;

label_14464220(find(label_14464220 == 0)) = 61; label_14464220(find(label_14464220 == 1)) = 62; label_14464220(find(label_14464220 == 2)) = 63;
label_14464220(find(label_14464220 == 3)) = 64; label_14464220(find(label_14464220 == 4)) = 65; label_14464220(find(label_14464220 == 5)) = 66;

label_14474380(find(label_14474380 == 0)) = 67; label_14474380(find(label_14474380 == 1)) = 68; label_14474380(find(label_14474380 == 2)) = 69;
label_14474380(find(label_14474380 == 3)) = 70; label_14474380(find(label_14474380 == 4)) = 71; label_14474380(find(label_14474380 == 5)) = 72;

label_2146559(find(label_2146559 == 0)) = 73; label_2146559(find(label_2146559 == 1)) = 74; label_2146559(find(label_2146559 == 2)) = 75;
label_2146559(find(label_2146559 == 3)) = 76; label_2146559(find(label_2146559 == 4)) = 77; label_2146559(find(label_2146559 == 5)) = 78;

label_2647065(find(label_2647065 == 0)) = 79; label_2647065(find(label_2647065 == 1)) = 80; label_2647065(find(label_2647065 == 2)) = 81;
label_2647065(find(label_2647065 == 3)) = 82; label_2647065(find(label_2647065 == 4)) = 83; label_2647065(find(label_2647065 == 5)) = 84;

label_3296035(find(label_3296035 == 0)) = 85; label_3296035(find(label_3296035 == 1)) = 86; label_3296035(find(label_3296035 == 2)) = 87;
label_3296035(find(label_3296035 == 3)) = 88; label_3296035(find(label_3296035 == 4)) = 89; label_3296035(find(label_3296035 == 5)) = 90;

label_3302420(find(label_3302420 == 0)) = 91; label_3302420(find(label_3302420 == 1)) = 92; label_3302420(find(label_3302420 == 2)) = 93;
label_3302420(find(label_3302420 == 3)) = 94; label_3302420(find(label_3302420 == 4)) = 95; label_3302420(find(label_3302420 == 5)) = 96;

label_3302560(find(label_3302560 == 0)) = 97; label_3302560(find(label_3302560 == 1)) = 98; label_3302560(find(label_3302560 == 2)) = 99;
label_3302560(find(label_3302560 == 3)) = 100; label_3302560(find(label_3302560 == 4)) = 101; label_3302560(find(label_3302560 == 5)) = 102;

label_3957880(find(label_3957880 == 0)) = 103; label_3957880(find(label_3957880 == 1)) = 104; label_3957880(find(label_3957880 == 2)) = 105;
label_3957880(find(label_3957880 == 3)) = 106; label_3957880(find(label_3957880 == 4)) = 107; label_3957880(find(label_3957880 == 5)) = 108;

label_3988500(find(label_3988500 == 0)) = 109; label_3988500(find(label_3988500 == 1)) = 110; label_3988500(find(label_3988500 == 2)) = 111;
label_3988500(find(label_3988500 == 3)) = 112; label_3988500(find(label_3988500 == 4)) = 113; label_3988500(find(label_3988500 == 5)) = 114;

label_3988540(find(label_3988540 == 0)) = 115; label_3988540(find(label_3988540 == 1)) = 116; label_3988540(find(label_3988540 == 2)) = 117;
label_3988540(find(label_3988540 == 3)) = 118; label_3988540(find(label_3988540 == 4)) = 119; label_3988540(find(label_3988540 == 5)) = 120;

label_4924360(find(label_4924360 == 0)) = 121; label_4924360(find(label_4924360 == 1)) = 122; label_4924360(find(label_4924360 == 2)) = 123;
label_4924360(find(label_4924360 == 3)) = 124; label_4924360(find(label_4924360 == 4)) = 125; label_4924360(find(label_4924360 == 5)) = 126;

label_6500(find(label_6500 == 0)) = 127; label_6500(find(label_6500 == 1)) = 128; label_6500(find(label_6500 == 2)) = 129;
label_6500(find(label_6500 == 3)) = 130; label_6500(find(label_6500 == 4)) = 131; label_6500(find(label_6500 == 5)) = 132;

label_6553700(find(label_6553700 == 0)) = 133; label_6553700(find(label_6553700 == 1)) = 134; label_6553700(find(label_6553700 == 2)) = 135;
label_6553700(find(label_6553700 == 3)) = 136; label_6553700(find(label_6553700 == 4)) = 137; label_6553700(find(label_6553700 == 5)) = 138;

label_6558940(find(label_6558940 == 0)) = 139; label_6558940(find(label_6558940 == 1)) = 140; label_6558940(find(label_6558940 == 2)) = 141;
label_6558940(find(label_6558940 == 3)) = 142; label_6558940(find(label_6558940 == 4)) = 143; label_6558940(find(label_6558940 == 5)) = 144;

label_660700(find(label_660700 == 0)) = 145; label_660700(find(label_660700 == 1)) = 146; label_660700(find(label_660700 == 2)) = 147;
label_660700(find(label_660700 == 3)) = 148; label_660700(find(label_660700 == 4)) = 149; label_660700(find(label_660700 == 5)) = 150;

label_7874740(find(label_7874740 == 0)) = 151; label_7874740(find(label_7874740 == 1)) = 152; label_7874740(find(label_7874740 == 2)) = 153;
label_7874740(find(label_7874740 == 3)) = 154; label_7874740(find(label_7874740 == 4)) = 155; label_7874740(find(label_7874740 == 5)) = 156;

label_8204875(find(label_8204875 == 0)) = 157; label_8204875(find(label_8204875 == 1)) = 158; label_8204875(find(label_8204875 == 2)) = 159;
label_8204875(find(label_8204875 == 3)) = 160; label_8204875(find(label_8204875 == 4)) = 161; label_8204875(find(label_8204875 == 5)) = 162;

label_9180240(find(label_9180240 == 0)) = 163; label_9180240(find(label_9180240 == 1)) = 164; label_9180240(find(label_9180240 == 2)) = 165;
label_9180240(find(label_9180240 == 3)) = 166; label_9180240(find(label_9180240 == 4)) = 167; label_9180240(find(label_9180240 == 5)) = 168;

label_9180300(find(label_9180300 == 0)) = 169; label_9180300(find(label_9180300 == 1)) = 170; label_9180300(find(label_9180300 == 2)) = 171;
label_9180300(find(label_9180300 == 3)) = 172; label_9180300(find(label_9180300 == 4)) = 173; label_9180300(find(label_9180300 == 5)) = 174;

label_9182740(find(label_9182740 == 0)) = 175; label_9182740(find(label_9182740 == 1)) = 176; label_9182740(find(label_9182740 == 2)) = 177;
label_9182740(find(label_9182740 == 3)) = 178; label_9182740(find(label_9182740 == 4)) = 179; label_9182740(find(label_9182740 == 5)) = 180;

label_9211105(find(label_9211105 == 0)) = 181; label_9211105(find(label_9211105 == 1)) = 182; label_9211105(find(label_9211105 == 2)) = 183;
label_9211105(find(label_9211105 == 3)) = 184; label_9211105(find(label_9211105 == 4)) = 185; label_9211105(find(label_9211105 == 5)) = 186;

label_9221140(find(label_9221140 == 0)) = 187; label_9221140(find(label_9221140 == 1)) = 188; label_9221140(find(label_9221140 == 2)) = 189;
label_9221140(find(label_9221140 == 3)) = 190; label_9221140(find(label_9221140 == 4)) = 191; label_9221140(find(label_9221140 == 5)) = 192;

label_9221340(find(label_9221340 == 0)) = 193; label_9221340(find(label_9221340 == 1)) = 194; label_9221340(find(label_9221340 == 2)) = 195;
label_9221340(find(label_9221340 == 3)) = 196; label_9221340(find(label_9221340 == 4)) = 197; label_9221340(find(label_9221340 == 5)) = 198;

label_9231540(find(label_9231540 == 0)) = 199; label_9231540(find(label_9231540 == 1)) = 200; label_9231540(find(label_9231540 == 2)) = 201;
label_9231540(find(label_9231540 == 3)) = 202; label_9231540(find(label_9231540 == 4)) = 203; label_9231540(find(label_9231540 == 5)) = 204;

final_LH_labels = zeros(numel(LHthick) , 1);

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 10511485)
            final_LH_labels(i) = label_10511485(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 10542100)
            final_LH_labels(i) = label_10542100(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 11146310)
            final_LH_labels(i) = label_11146310(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 11832480)
            final_LH_labels(i) = label_11832480(j);
            j=j+1;
        end 
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 13145750)
            final_LH_labels(i) = label_13145750(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 1316060)
            final_LH_labels(i) = label_1316060(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 1326300)
            final_LH_labels(i) = label_1326300(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 1351760)
            final_LH_labels(i) = label_1351760(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14423100)
            final_LH_labels(i) = label_14423100(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14433500)
            final_LH_labels(i) = label_14433500(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14464220)
            final_LH_labels(i) = label_14464220(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 14474380)
            final_LH_labels(i) = label_14474380(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 2146559)
            final_LH_labels(i) = label_2146559(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 2647065)
            final_LH_labels(i) = label_2647065(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3296035)
            final_LH_labels(i) = label_3296035(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3302420)
            final_LH_labels(i) = label_3302420(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3302560)
            final_LH_labels(i) = label_3302560(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3957880)
            final_LH_labels(i) = label_3957880(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3988500)
            final_LH_labels(i) = label_3988500(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 3988540)
            final_LH_labels(i) = label_3988540(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 4924360)
            final_LH_labels(i) = label_4924360(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 6500)
            final_LH_labels(i) = label_6500(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 6553700)    
            final_LH_labels(i) = label_6553700(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 6558940)
            final_LH_labels(i) = label_6558940(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 660700)
            final_LH_labels(i) = label_660700(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 7874740)
            final_LH_labels(i) = label_7874740(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 8204875)
            final_LH_labels(i) = label_8204875(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9180240)
            final_LH_labels(i) = label_9180240(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9180300)
            final_LH_labels(i) = label_9180300(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9182740)
            final_LH_labels(i) = label_9182740(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9211105)
            final_LH_labels(i) = label_9211105(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9221140)
            final_LH_labels(i) = label_9221140(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9221340)
            final_LH_labels(i) = label_9221340(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(LH_label)
        if(LH_label(i) == 9231540)
            final_LH_labels(i) = label_9231540(j);
            j=j+1;
        end
end

disp('Labels gathered successfully!');


%%
%assumption: max rgb codes: 128
disp('Creating annotation file...');
vertices = LH_vertices;
ct.numEntries = numel(unique(final_LH_labels));
ct.orig_tab = '/autofs/space/tanha_002/users/greve/fsdev.build/average/colortable_desikan_killiany.txt';

names = [];
for i=1:numel(unique(final_LH_labels))
   names = [names; {['area_' num2str(i)]}] ;
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


a = unique(final_LH_labels);
b = tabel(:,5);
n = numel(final_LH_labels);
m = numel(unique(final_LH_labels));

for i = 1:n
   for j = 1:m
       if (final_LH_labels(i) == a(j))
           final_LH_labels(i) = b(j);
       end
   end
end

write_annotation('LH_annotation.annot', vertices, final_LH_labels, ct)

disp('Annotation file is created successfully!');
disp('Finished');
toc;