clc;
clear;
close all;

load('A:\SBU_University\Master_Project\essentials\brain_data');
LH_label_unique = unique(LH_label);

for i=1:35
   for j=1:numel(LH_label)
      
       name = ['LH_vertex_' num2str(LH_label_unique(i))];
       name = [];
       
   end
end