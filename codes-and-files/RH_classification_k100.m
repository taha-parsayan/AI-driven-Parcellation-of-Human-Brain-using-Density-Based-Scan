clc;
clear;
close all;
tic;
%%
disp('Loading data...');
load('E:\SBU_University\Master_Project\essentials\brain_data');
RH_label_unique = unique(RH_label);
disp('Data loaded successfully!');
%
disp('Isolating RH vertexes...');

RH_vertex_0 = [RHarea(find(RH_label == 0)) RHcurv(find(RH_label == 0)) RHthick(find(RH_label == 0)) RHvol(find(RH_label == 0))];
RH_vertex_6500 = [RHarea(find(RH_label == 6500)) RHcurv(find(RH_label == 6500)) RHthick(find(RH_label == 6500)) RHvol(find(RH_label == 6500))];
RH_vertex_660700 = [RHarea(find(RH_label == 660700)) RHcurv(find(RH_label == 660700)) RHthick(find(RH_label == 660700)) RHvol(find(RH_label == 660700))];
RH_vertex_1316060 = [RHarea(find(RH_label == 1316060)) RHcurv(find(RH_label == 1316060)) RHthick(find(RH_label == 1316060)) RHvol(find(RH_label == 1316060))];
RH_vertex_1326300 = [RHarea(find(RH_label == 1326300)) RHcurv(find(RH_label == 1326300)) RHthick(find(RH_label == 1326300)) RHvol(find(RH_label == 1326300))];
RH_vertex_1351760 = [RHarea(find(RH_label == 1351760)) RHcurv(find(RH_label == 1351760)) RHthick(find(RH_label == 1351760)) RHvol(find(RH_label == 1351760))];
RH_vertex_2146559 = [RHarea(find(RH_label == 2146559)) RHcurv(find(RH_label == 2146559)) RHthick(find(RH_label == 2146559)) RHvol(find(RH_label == 2146559))];
RH_vertex_2647065 = [RHarea(find(RH_label == 2647065)) RHcurv(find(RH_label == 2647065)) RHthick(find(RH_label == 2647065)) RHvol(find(RH_label == 2647065))];
RH_vertex_3296035 = [RHarea(find(RH_label == 3296035)) RHcurv(find(RH_label == 3296035)) RHthick(find(RH_label == 3296035)) RHvol(find(RH_label == 3296035))];
RH_vertex_3302420 = [RHarea(find(RH_label == 3302420)) RHcurv(find(RH_label == 3302420)) RHthick(find(RH_label == 3302420)) RHvol(find(RH_label == 3302420))];
RH_vertex_3302560 = [RHarea(find(RH_label == 3302560)) RHcurv(find(RH_label == 3302560)) RHthick(find(RH_label == 3302560)) RHvol(find(RH_label == 3302560))];
RH_vertex_3957880 = [RHarea(find(RH_label == 3957880)) RHcurv(find(RH_label == 3957880)) RHthick(find(RH_label == 3957880)) RHvol(find(RH_label == 3957880))];
RH_vertex_3988500 = [RHarea(find(RH_label == 3988500)) RHcurv(find(RH_label == 3988500)) RHthick(find(RH_label == 3988500)) RHvol(find(RH_label == 3988500))];
RH_vertex_3988540 = [RHarea(find(RH_label == 3988540)) RHcurv(find(RH_label == 3988540)) RHthick(find(RH_label == 3988540)) RHvol(find(RH_label == 3988540))];
RH_vertex_4924360 = [RHarea(find(RH_label == 4924360)) RHcurv(find(RH_label == 4924360)) RHthick(find(RH_label == 4924360)) RHvol(find(RH_label == 4924360))];
RH_vertex_6553700 = [RHarea(find(RH_label == 6553700)) RHcurv(find(RH_label == 6553700)) RHthick(find(RH_label == 6553700)) RHvol(find(RH_label == 6553700))];
RH_vertex_6558940 = [RHarea(find(RH_label == 6558940)) RHcurv(find(RH_label == 6558940)) RHthick(find(RH_label == 6558940)) RHvol(find(RH_label == 6558940))];
RH_vertex_7874740 = [RHarea(find(RH_label == 7874740)) RHcurv(find(RH_label == 7874740)) RHthick(find(RH_label == 7874740)) RHvol(find(RH_label == 7874740))];
RH_vertex_8204875 = [RHarea(find(RH_label == 8204875)) RHcurv(find(RH_label == 8204875)) RHthick(find(RH_label == 8204875)) RHvol(find(RH_label == 8204875))];
RH_vertex_9180240 = [RHarea(find(RH_label == 9180240)) RHcurv(find(RH_label == 9180240)) RHthick(find(RH_label == 9180240)) RHvol(find(RH_label == 9180240))];
RH_vertex_9180300 = [RHarea(find(RH_label == 9180300)) RHcurv(find(RH_label == 9180300)) RHthick(find(RH_label == 9180300)) RHvol(find(RH_label == 9180300))];
RH_vertex_9182740 = [RHarea(find(RH_label == 9182740)) RHcurv(find(RH_label == 9182740)) RHthick(find(RH_label == 9182740)) RHvol(find(RH_label == 9182740))];
RH_vertex_9211105 = [RHarea(find(RH_label == 9211105)) RHcurv(find(RH_label == 9211105)) RHthick(find(RH_label == 9211105)) RHvol(find(RH_label == 9211105))];
RH_vertex_9221140 = [RHarea(find(RH_label == 9221140)) RHcurv(find(RH_label == 9221140)) RHthick(find(RH_label == 9221140)) RHvol(find(RH_label == 9221140))];
RH_vertex_9221340 = [RHarea(find(RH_label == 9221340)) RHcurv(find(RH_label == 9221340)) RHthick(find(RH_label == 9221340)) RHvol(find(RH_label == 9221340))];
RH_vertex_9231540 = [RHarea(find(RH_label == 9231540)) RHcurv(find(RH_label == 9231540)) RHthick(find(RH_label == 9231540)) RHvol(find(RH_label == 9231540))];
RH_vertex_10511485 = [RHarea(find(RH_label == 10511485)) RHcurv(find(RH_label == 10511485)) RHthick(find(RH_label == 10511485)) RHvol(find(RH_label == 10511485))];
RH_vertex_10542100 = [RHarea(find(RH_label == 10542100)) RHcurv(find(RH_label == 10542100)) RHthick(find(RH_label == 10542100)) RHvol(find(RH_label == 10542100))];
RH_vertex_11146310 = [RHarea(find(RH_label == 11146310)) RHcurv(find(RH_label == 11146310)) RHthick(find(RH_label == 11146310)) RHvol(find(RH_label == 11146310))];
RH_vertex_11832480 = [RHarea(find(RH_label == 11832480)) RHcurv(find(RH_label == 11832480)) RHthick(find(RH_label == 11832480)) RHvol(find(RH_label == 11832480))];
RH_vertex_13145750 = [RHarea(find(RH_label == 13145750)) RHcurv(find(RH_label == 13145750)) RHthick(find(RH_label == 13145750)) RHvol(find(RH_label == 13145750))];
RH_vertex_14423100 = [RHarea(find(RH_label == 14423100)) RHcurv(find(RH_label == 14423100)) RHthick(find(RH_label == 14423100)) RHvol(find(RH_label == 14423100))];
RH_vertex_14433500 = [RHarea(find(RH_label == 14433500)) RHcurv(find(RH_label == 14433500)) RHthick(find(RH_label == 14433500)) RHvol(find(RH_label == 14433500))];
RH_vertex_14464220 = [RHarea(find(RH_label == 14464220)) RHcurv(find(RH_label == 14464220)) RHthick(find(RH_label == 14464220)) RHvol(find(RH_label == 14464220))];
RH_vertex_14474380 = [RHarea(find(RH_label == 14474380)) RHcurv(find(RH_label == 14474380)) RHthick(find(RH_label == 14474380)) RHvol(find(RH_label == 14474380))];

disp('RH Vertexes isolated successfully!');

%%
disp('Labeling vertexes...');
dist=@(y,Y) pdist2(y,Y);

% label_0 = dbscan(RH_vertex_0, 50, 0.1, dist);
% disp('label_0:');
% disp(unique(label_0));

label_6500 = dbscan(RH_vertex_6500, 100, 0.44, dist);
disp('label_6500:');
disp(unique(label_6500'));

label_660700 = dbscan(RH_vertex_660700, 100, 0.7, dist);
disp('label_660700:');
disp(unique(label_660700'));

label_1316060 = dbscan(RH_vertex_1316060, 100, 0.4, dist);
disp('label_1316060:');
disp(unique(label_1316060'));

label_1326300 = dbscan(RH_vertex_1326300, 20, 0.43, dist);
disp('label_1326300:');
disp(unique(label_1326300'));

label_1351760 = dbscan(RH_vertex_1351760, 20, 0.37, dist);
disp('label_1351760:');
disp(unique(label_1351760'));

label_2146559 = dbscan(RH_vertex_2146559, 20, 0.33, dist);
disp('label_2146559:');
disp(unique(label_2146559'));

label_2647065 = dbscan(RH_vertex_2647065, 20, 0.44, dist);
disp('label_2647065:');
disp(unique(label_2647065'));

label_3296035 = dbscan(RH_vertex_3296035, 20, 0.42, dist);
disp('label_3296035:');
disp(unique(label_3296035'));

label_3302420 = dbscan(RH_vertex_3302420, 20, 0.57, dist);
disp('label_3302420:');
disp(unique(label_3302420'));

label_3302560 = dbscan(RH_vertex_3302560, 20, 0.44, dist);
disp('label_3302560:');
disp(unique(label_3302560'));

label_3957880 = dbscan(RH_vertex_3957880, 20, 0.54, dist);
disp('label_3957880:');
disp(unique(label_3957880'));

label_3988500 = dbscan(RH_vertex_3988500, 20, 0.55, dist);
disp('label_3988500:');
disp(unique(label_3988500'));

label_3988540 = dbscan(RH_vertex_3988540, 20, 0.37, dist);
disp('label_3988540:');
disp(unique(label_3988540'));

label_4924360 = dbscan(RH_vertex_4924360, 20, 0.44, dist);
disp('label_4924360:');
disp(unique(label_4924360'));

label_6553700 = dbscan(RH_vertex_6553700, 20, 0.53, dist);
disp('label_6553700:');
disp(unique(label_6553700'));

label_6558940 = dbscan(RH_vertex_6558940, 20, 0.32, dist);
disp('label_6558940:');
disp(unique(label_6558940'));

label_7874740 = dbscan(RH_vertex_7874740, 20, 0.44, dist);
disp('label_7874740:');
disp(unique(label_7874740'));

label_8204875 = dbscan(RH_vertex_8204875, 20, 0.24, dist);
disp('label_8204875:');
disp(unique(label_8204875'));

label_9180240 = dbscan(RH_vertex_9180240, 20, 0.29, dist);
disp('label_9180240:');
disp(unique(label_9180240'));

label_9180300 = dbscan(RH_vertex_9180300, 20, 0.45, dist);
disp('label_9180300:');
disp(unique(label_9180300'));

label_9182740 = dbscan(RH_vertex_9182740, 20, 0.28, dist);
disp('label_9182740:');
disp(unique(label_9182740'));

label_9211105 = dbscan(RH_vertex_9211105, 20, 0.34, dist);
disp('label_9211105:');
disp(unique(label_9211105'));

label_9221140 = dbscan(RH_vertex_9221140, 20, 0.3, dist);
disp('label_9221140:');
disp(unique(label_9221140'));

label_9221340 = dbscan(RH_vertex_9221340, 20, 0.44, dist);
disp('label_9221340:');
disp(unique(label_9221340'));

label_9231540 = dbscan(RH_vertex_9231540, 20, 0.43, dist);
disp('label_9231540:');
disp(unique(label_9231540'));

label_10511485 = dbscan(RH_vertex_10511485, 20, 0.53, dist);
disp('label_10511485:');
disp(unique(label_10511485'));

label_10542100 = dbscan(RH_vertex_10542100, 20, 0.2, dist);
disp('label_10542100:');
disp(unique(label_10542100'));

label_11146310 = dbscan(RH_vertex_11146310, 20, 0.5, dist);
disp('label_11146310:');
disp(unique(label_11146310'));

label_11832480 = dbscan(RH_vertex_11832480, 20, 0.32, dist);
disp('label_11832480:');
disp(unique(label_11832480')); 

label_13145750 = dbscan(RH_vertex_13145750, 20, 0.48, dist);
disp('label_13145750:');
disp(unique(label_13145750'));

label_14423100 = dbscan(RH_vertex_14423100, 20, 0.27, dist);
disp('label_14423100:');
disp(unique(label_14423100')); 

label_14433500 = dbscan(RH_vertex_14433500, 20, 0.35, dist);
disp('label_14433500:');
disp(unique(label_14433500')); 

label_14464220 = dbscan(RH_vertex_14464220, 20, 0.37, dist);
disp('label_14464220:');
disp(unique(label_14464220'));

label_14474380 = dbscan(RH_vertex_14474380, 20, 0.32, dist);
disp('label_14474380:');
disp(unique(label_14474380'));

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

label_10511485(find(label_10511485 == 0)) = 1; label_10511485(find(label_10511485 == 1)) = 2; label_10511485(find(label_10511485 == 2)) = 3;
label_10511485(find(label_10511485 == 3)) = 4; label_10511485(find(label_10511485 == 4)) = 5; label_10511485(find(label_10511485 == 5)) = 6;

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

final_RH_labels = zeros(numel(RHthick) , 1);

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 10511485)
            final_RH_labels(i) = label_10511485(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 10542100)
            final_RH_labels(i) = label_10542100(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 11146310)
            final_RH_labels(i) = label_11146310(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 11832480)
            final_RH_labels(i) = label_11832480(j);
            j=j+1;
        end 
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 13145750)
            final_RH_labels(i) = label_13145750(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 1316060)
            final_RH_labels(i) = label_1316060(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 1326300)
            final_RH_labels(i) = label_1326300(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 1351760)
            final_RH_labels(i) = label_1351760(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14423100)
            final_RH_labels(i) = label_14423100(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14433500)
            final_RH_labels(i) = label_14433500(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14464220)
            final_RH_labels(i) = label_14464220(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 14474380)
            final_RH_labels(i) = label_14474380(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 2146559)
            final_RH_labels(i) = label_2146559(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 2647065)
            final_RH_labels(i) = label_2647065(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3296035)
            final_RH_labels(i) = label_3296035(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3302420)
            final_RH_labels(i) = label_3302420(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3302560)
            final_RH_labels(i) = label_3302560(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3957880)
            final_RH_labels(i) = label_3957880(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3988500)
            final_RH_labels(i) = label_3988500(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 3988540)
            final_RH_labels(i) = label_3988540(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 4924360)
            final_RH_labels(i) = label_4924360(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 6500)
            final_RH_labels(i) = label_6500(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 6553700)    
            final_RH_labels(i) = label_6553700(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 6558940)
            final_RH_labels(i) = label_6558940(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 660700)
            final_RH_labels(i) = label_660700(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 7874740)
            final_RH_labels(i) = label_7874740(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 8204875)
            final_RH_labels(i) = label_8204875(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9180240)
            final_RH_labels(i) = label_9180240(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9180300)
            final_RH_labels(i) = label_9180300(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9182740)
            final_RH_labels(i) = label_9182740(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9211105)
            final_RH_labels(i) = label_9211105(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9221140)
            final_RH_labels(i) = label_9221140(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9221340)
            final_RH_labels(i) = label_9221340(j);
            j=j+1;
        end
end

j=1;
for i=1:numel(RH_label)
        if(RH_label(i) == 9231540)
            final_RH_labels(i) = label_9231540(j);
            j=j+1;
        end
end

disp('Labels gathered successfully!');


%%
disp('Creating annotation file...');
vertices = RH_vertices;
ct.numEntries = numel(unique(final_RH_labels));
ct.orig_tab = '/autofs/space/tanha_002/users/greve/fsdev.build/average/colortable_desikan_killiany.txt';

names = [];
for i=1:numel(unique(final_RH_labels))
   names = [names; {['area_' num2str(i)]}] ;
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


a = unique(final_RH_labels);
b = tabel(:,5);
n = numel(final_RH_labels);
m = numel(unique(final_RH_labels));

for i = 1:n
   for j = 1:m
       if (final_RH_labels(i) == a(j))
           final_RH_labels(i) = b(j);
       end
   end
end

write_annotation('RH_annotation.annot', vertices, final_RH_labels, ct)

disp('Annotation file is created successfully!');
disp('Finished');
toc;



