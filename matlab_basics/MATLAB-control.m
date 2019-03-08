%% Code for lecture on control statements
% This code is used for teaching basic MATLAB/programming concepts.

% mikexcohen.com

%% VIDEO: Condition statement architecture, if, switch

%% if-statements

% Exactly how it sounds
if 4>5
    disp('Something has gone awry in the universe')
end


% with an alternative
if 4>5
    disp('Something is still very wrong')
else
    disp('Whew! Everything''s normal.') % note the two single-quote marks inside the string
end


% more alternatives
randnum = randn;
if randnum>2
    disp('Big number')
elseif randnum>0 && randnum<2
    disp('Not so big')
elseif randnum<0 && randnum>-2
    disp('A bit on the negative side')
else
    disp('super negative')
end


%% switch

% the 'switch/case' statement is similar to 'if/else'
animal = 'monkey';
switch animal
    case 'dog' % compares variable "animal" to 'dog'
        fav_food = 'cheese';
    case 'cat'
        fav_food = 'bird-flavored yogurt';
    case 'monkey'
        fav_food = 'bananas';
    otherwise
        fav_food = 'pizza';
end % end switch

disp([ 'In the wild, the ' animal ' prefers to eat ' fav_food '.' ])

%%

%% VIDEO: for-loops

%% for-loops

% A for-loop is a way to iterate repeatedly:

for counting_variable = 1:10
    disp(counting_variable); % disp stands for display, which prints information in the command window
end

% another example:
for i = 1:2:10
    disp([ 'The ' num2str(i) 'th iteration value times 2 divided by 3 and added to 7 is ' num2str(i*2/3+7) '.' ])
end

% an if-statement embedded in a loop
for numi=1:10
    if mod(numi,2)==0
        disp([ 'The number ' num2str(numi) ' is even.' ])
    else
        disp([ 'The number ' num2str(numi) ' is odd. And that''s the way the news goes.' ])
    end
end


% You can embed loops within loops
for i = 1:5
    for j = 3:7
        product_matrix(i,j) = i*j; % Matlab produces a warning here because product_matrix is not initialized.
    end
end
% Two important things to note about the example above: (1) You can use the same numbers as
% indices AND as variables; (2) Unspecified elements in a matrix are
% automatically created and set to zero. 



number_rows    = 5; % having many spaces is allowed and facilitates code aesthetics
number_columns = 7;
% initialize matrix with zeros
product_matrix = zeros(number_rows,number_columns);

for i=1:number_rows
    for j=1:number_columns
        product_matrix(i,j)=i*j;
    end % end j-loop
end % end i-loop
% note the comments following end-statements. When you have multiple long
% loops, this kind of commenting will be helpful. Also note that when you 
% click on one of the "for" or "end" statements, its pair will be underlined. 



% a common problem in for loops:
avec = zeros(7,1);
for i=-3:3
    avec(i) = i;
end

%%

%% VIDEO: while-loops

%% while-loops

% while loops are similar to for-loops except:
%   1) You don't need to specify before-hand how many iterations to run,
%   2) The looping variable is not implicitly updated; you have to increment it yourself.

toggle = false;

idx = 1;
while toggle
    disp([ 'I''m working on step ' num2str(idx) ' and it makes me happy.' ])
end

%% example of while loop

% initialize values to 100
[curr_val,init_val] = deal( 100 );

toggle = true;

while toggle
    
    % decrease value by 5%
    curr_val = curr_val * .95;
    
    % compute percent change from initial value
    pctchng = 100*(init_val-curr_val) / init_val;
    
    % round to 2 decimal points
    pctchngRound = round(pctchng*100)/100;
    
    % display message
    disp([ 'Value = ' num2str(curr_val) ', ' num2str(pctchngRound) '% change from original value.' ])
    
    % check if toggle should be switched off
    if curr_val<1
        toggle = false;
    end
end

%%

%% VIDEO: try-catch

%% try-catch

% used to ignore errors but collect information about the error for later inspection

vec = [2 3 4];

% case 1:
vec(4)

% case 2:
try
    vec(4)
catch me
end

%%

%% VIDEO: Maximal flexibility importing and exporting with f* functions

%% advanced importing text data

% Here we borrow from C language to flexibly read in mixed data. Let's say
% you have some poorly organized behavioral data files to read in, but at 
% least you know what text strings to look for: 

fid = fopen('headache_data.txt','r');
% fid is a pointer to a location on the physical hard disk (similar to how
% we used variables as handles to axes when plotting). The 'r' means read
% (later we'll use 'w' for write).

% In this particular example, we will extract the trial number, subject
% choice, reaction time (RT), and accuracy for each trial. Fields are separated by tabs.

mydata = []; % initialize... we can't initialize the full matrix, because we don't know how big this will be.

% The following code will remain inside a loop, reading in and processing new
% lines of data, until we reach the end of the file.
row = 1;

while ~feof(fid) % feof tests whether we're at the end of the file.
    
    aline = fgetl(fid); % read a line ("file get line")
    
    aline = regexp(aline,'\t','split');
    % regexp can be used to cut data according to delimiters. Here we will
    % cut this string of characters into a cell array in which elements of
    % the array are separated by tabs.
    
    % here we use strcmpi to compare strings. The "i" means to ignore case.
    if ~any(strcmpi('trial',aline))
        continue % continue means to skip to the next iteration of the loop.
    end
    
    trial_column    = find(strcmpi('trial',   aline));
    choice_column   = find(strcmpi('choice',  aline));
    rt_column       = find(strcmpi('rt',      aline));
    accuracy_column = find(strcmpi('accuracy',aline));
    
    mydata(row,1) = str2double(aline{trial_column+1});      % Note that we didn't initialize the size of the variable "behavioral_data" so matlab gives a warning.
    mydata(row,2) = str2double(aline{choice_column+1});     % If the variable is relatively small, it doesn't matter. 
    mydata(row,3) = str2double(aline{rt_column+1});         % If the variable is large, however, it's best to initialize it to something really big, and then cut it down to size afterwards.
    mydata(row,4) = str2double(aline{accuracy_column+1});   % See chapter 4 in the book for further discussion of matrix initializations.
    
    row = row+1; % increment row
end

fclose(fid); % don't forget to close the file after you finish it

%% advanced writing out data data

fid = fopen('data_output4spreadsheet.txt','w');

% we want the first row to be variable labels, then rows of mixed string-number data

% variable labels
variable_labels = {'Name';'trial';'choice';'rt';'accuracy'};

% let's add subject names
subject_names = {'billy';'bob'};

% write out header row
for vari=1:length(variable_labels)
    fprintf(fid,'%s\t',variable_labels{vari});
    % the %s is for string; %g is for number.
end

% insert a new-line character
fprintf(fid,'\n');

for datarowi=1:size(mydata,1)
    
    % print subject name
    fprintf(fid,'%s\t',subject_names{datarowi});
    
    % now loop through columns (variables)
    for coli=1:size(mydata,2)
        fprintf(fid,'%g\t',mydata(datarowi,coli));
    end
    fprintf(fid,'\n'); % end-of-line 
    
    % You could also do this in one line:
    % fprintf(fid,'%s\t%g\t%g\t%g\t%g\n',subject_names{datarowi},behavioral_data(datarowi,1),behavioral_data(datarowi,2),behavioral_data(datarowi,3),behavioral_data(datarowi,4));
    
    fprintf('Finished writing line %g of %g\n',datarowi,size(mydata,1));
end

fclose(fid);

% Note that if you omit the first argument to fprintf, it puts the output
% in the command instead of the text file, as in the final line of this for-loop.

%% end.
