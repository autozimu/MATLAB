%% customize settings
% set the default text interpreter to LaTeX
set(0,'defaulttextinterpreter','latex');
% change default font in figure
% TODO: this needs more consideration. I am not quite sure which font is
% better for figures. The 'Times' font is the default font in matplotlib.
set(0, 'defaulttextfontname', 'Times');

%% load export_fig
addpath ~/Documents/MATLAB/export_fig
