%% Code for lecture on IO (input/output)
% This code is used for teaching basic MATLAB/programming concepts.

% mikexcohen.com

%% VIDEO: getting data into MATLAB the simple way

%% copy/paste from text file or spreadsheet

% Hint: use square brackets for numbers.
dat = [
    ];

%% importing "nice" text data

% The simplest way to read in text data is if all data in the next are
% numbers (no text). Open a text editor and make a small matrix (say, 3x4).
% Next, type: 
data = load('test_datafile.txt');

% slightly more advanced:
[file_name,file_path] = uigetfile('*.txt'); % ui = user-interface
data = load([ file_path file_name ]);

%% MATLAB-format .mat files

% load directly into the workspace
clear
load('testmat.mat')
% or
load testmat
whos


% or load as fields into a structure
clear
data = load('testmat.mat');
whos

%% excel files

% you can also read in data from excel files, but BE CAREFUL because this
% function can act in unexpected ways, e.g., by removing empty columns and
% rows without warning (this can be seen in comparing "numberdata" to "raw_data"). 
% Therefore, it might be best to use the "raw" data output. 
[numberdata,textdata,raw_data] = xlsread('test_excelfile.xlsx');

%% reading pictures

amsterpic = imread('amsterdam.bmp');

%% 

%% VIDEO: Exporting data in MATLAB, text, and Excel formats

% save as a .mat file:
save('my_matlab_variables.mat','data','amsterdam','x'); % Question: Why does matlab crash on this line?
% possible but not recommended
save % saves the entire workspace in matlab.mat


% The function 'dlmwrite' is useful if you have a matrix of numbers
% and want to write a text file of only numbers:
dlmwrite('data_written_from_matlab.txt',data,'\t');
% the final argument is the delimieter. This can be tab (\t), space ( ), comma (,), the letter X (X), etc. 

% export as Excel file
mat2save = round( 25*rand(4,5) );

% this function won't work if MATLAB cannot connect to a Microsoft Excel
% server, which happens if you don't have Microsoft Office.
xlswrite('filename.xlsx',mat2save)

% otherwise, consider exporting as csv (comma-separated-values)
csvwrite('filename.csv',mat2save)

%% end.
