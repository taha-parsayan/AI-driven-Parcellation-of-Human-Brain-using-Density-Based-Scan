clc;
clear;
close all;

tic
load('A:\SBU_University\Master_Project\essentials\brain_data.mat');
dist=@(y,Y) pdist2(y,Y);
classes = dbscan(brain_thick, 100, 0.02, dist);
toc