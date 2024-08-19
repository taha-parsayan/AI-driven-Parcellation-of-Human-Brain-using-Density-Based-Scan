clc;
clear;
close all;
tic;
%%
disp('Loading data...');
load('A:\SBU_University\Master_Project\essentials\brain_data');
coords = freesurfer_read_surf('A:\SBU_University\Master_Project\essentials\lh.pial');
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
ICA = jadeR(LH_vertex_6500, size(LH_vertex_6500,1));



