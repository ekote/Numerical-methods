%% Code for lecture on scripts and functions (part 1)
% This code is used for teaching basic MATLAB/programming concepts.

% mikexcohen.com

%% VIDEO: Scripts vs. functions, organization

%% evaluating code in a script

y = 5;

%% viewing functions

% most functions are also viewable, e.g.
edit linspace

% some are compiled
edit sum

%% information about function usage

% nearly all have help files
help fft

% sometimes more detailed help from doc
doc fft

% and of course the internet...

%% basic function usage

% functions take inputs in parentheses
vect = [ 1 2 3 ];
sum(vect)
% or
sum([ 1 2 3 ])

% function outputs stored as variables
numsum = sum([ 1 2 3 ]);


% some functions take multiple inputs
linspace(1,3,5)

% some functions take multiple outputs
[ maxval,maxidx ] = max([1 4 2 2])

%% functions for determining the size of variables

% create a matrix of random numbers
randmat = randn(30,4,10);
randvec = randn(20,1); % a matrix, not a vector!

% size 
size(randmat)
size(randmat,2)

% length
length(randvec)
length(randmat)

% numel
numel(randvec)
numel(randmat)

%% high-level organization

% 1) brief description (2-3 lines)
% 2) (optional) longer description
% 3) your name or contact info
% 4) outline of overall workflow
% 5) code and comments

%%

%% VIDEO: comments, cells, spacing

%% comments and cells

% A comment is text that is ignored by MATLAB
% and is used to annotate and explain code.

q = 7; % comments on same line as code

%{
A block of lines,
all commented.
%}

%% cells

% Press Ctrl-Enter to run the entire cell.
x = 1;

disp([ 'Running this cell to print the number ' num2str(x) ])

%% Spacing

% spacing is often unnecessary but always useful. Consider:
ans1=4*5+3/4-13^5;
ans2 = 4*5 + 3/4 - 13^5;

% spacing for assignments and control statements as well:
v=9;
for vi=1:v
result1(vi)=vi^v-4+3/vi^2;end

% or:
v = 9;
result2 = zeros(v,1);
for vi = 1:v
    result2(vi) = vi^v - 4 + 3/(vi^2);
end

%%

%% VIDEO: the MATLAB path

addpath('/home/mxc/Dropbox/classes/udemy/programming')
addpath( genpath('/home/mxc/Dropbox/classes/udemy/programming' ))

%%

%% VIDEO: parameters and soft/hard-coding

%% soft-coding

% parameters and toggles listed at the top of the scirpt:
param = 4.2;

% ... hundreds of lines of code ...
dataResult = tempresult * param;
% ... more hundreds of lines of code ...
otherresult = tempresult * param;


%% hard-coding

% ... hundreds of lines of code ...
dataResult = tempresult * 4.2;
% ... more hundreds of lines of code ...
otherresult = tempresult * 4.2;

%% end.
