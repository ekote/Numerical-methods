%% Code for section on variables
% This code is used for teaching basic MATLAB/programming concepts.

% mikexcohen.com

%% VIDEO: What are variables?

%%

% variables as place-holders for information
x = 1
a = 7
x + a
x*a^a

% reassign a value to a variable
x = 4
x*a^a

% with a semicolon to suppress the output
b = x*a^a
b = x*a^a;

%% variables for strings

s = 'hello';

s = 3;

%% longer variable names allow for interpretability

mike = 72;
tom  = 28;
mike + tom

whos

%% removing variables from the workspace

clear x
whos

x + 4

x  = 4;
xx = 5;
clear x* % clears everything that starts with x

clear % permanent!

%% common mistakes

% case-sensitive
varname = 1;
Varname

%%

%% VIDEO: Variables for numbers, indexing

%% creating vectors using square brackets []

% 3-element row vector
vec = [1 4 3];

% make it a column vector
% via transpose
vec = [1 4 3]';
% or via semicolons
vec = [1; 4; 3];

%% creating vectors using the colon operator

skipvec = 1:2:9;

%% matrices

amat = [ 1 2 3; 9 8 7; 3 5 2]

% uh oh...
amat = [ 1 2 3; 9 8 7; 3 2]

%% indexing vectors

% accessing a single element of a vector
vec(2)

% uh oh...
vec(.4)



% accessing multiple elements with the colon operator
vec(2:3)

% uh oh...
vec(1:.5:2)


% accessing multiple elements directly
vec([ 1 1 3 2 1 2 3 2 ])

%% indexing matrices

amat(1,2:3)

amat(1,[2 3])

% linear indexing (best avoided for now)
amat(4:5)


%%

%% VIDEO: Variables for strings (char, string)


%% characters

name = 'mike';
name = mike;

str4 = '4';

%% cells

names = { 'mike' };

names = { name ; 4 }; % what happens without the semicolon in the middle?

%% cell arrays

celery{1} = [ 1 2 3 4 5 6 7 ];
celery{2} = 'hello world';
celery{3} = [ 1 3 6 7 4 3 5 6 7 87 76 43 4 5 6 767 ];

celery
celery{2}

%% [] {}

% square brackets for concatenation
[ 3 4:6 pi ]
[ 'Hello ' 'my name is Mike and I like ' num2str(7) ' apples.' ]

% curly brackets for cell arrays
cell1 = { 4 4 5 };
cell2 = { 'hello my' 'name' 'is' 'Mike' };


%% 

%% VIDEO: Variables for logicals

%% boolean (a.k.a. logicals, a.k.a. true/false)

% sometimes, it's useful to know if a statement is TRUE or FALSE. 
% You can use a double-equals sign to ask the question of truth:
5==5

% The opposite of true (1) is false (0):
5==4

% not allowed:
4=5

% You can assign these answers to variables:
fourIsFive = 4==5;

whos fourIsFive


% you can use the tilde "~" to negate a statement:
~(1==1) % false because the negation of 1==1 is false
~(4>3)  % also false because the negation of 4>3 is false
~(4<3)  % true because it is false (~) that 4 is greater than 3. Tricky!

% Remember:
%    One equals sign is a statement ("you have this value").
%    Two equals signs means you are asking a question ("are these the same?").

%%

%% VIDEO: Variables for structures

%%

% The most flexible type of variable is a structure. Structures contain fields that 
% are used for different kinds of data. For example:

ANTS.name = 'mike'; % ANTS = Analyzing Neural Time Series
ANTS.position = 'author';
ANTS.favorite_toothpaste_flavor = 'cinnamon';
ANTS.number_of_watches = 18;
ANTS.favorite_color = [ .8 .1 .8 ]; % RGB values

% You can also have an array of structures
ANTS(2).name = 'Mickey Mouse';
ANTS(2).position = 'learner';
ANTS(2).favorite_toothpaste_flavor = 'bratworst'; % gross, but who am I to judge?
ANTS(2).number_of_watches = 1;
ANTS(2).favorite_color = [ 1 1 1 ];

% now you can get information about all fields from one specific element of
% the structure:
ANTS(1)

% or information about one field within one member:
ANTS(1).number_of_watches

% or information about one field from all members:
ANTS.favorite_toothpaste_flavor

% note that this last result came out as two separate answers. If you want
% to combine them into a single output (e.g., a cell array), use curly
% brackets:
{ANTS.favorite_toothpaste_flavor}


%%

%% VIDEO: Variable naming rules and recommendations


%% variable naming rules and guidelines

% allowed:
varb = 1;
Varb = 2;
vArb = 3;
v_arb = 4;

% not allowed:
1varb = 1;
v^arb = 3;

% allowed but should be avoided:
a_variable_name_that_is_long_and_detailed_but_annoying_to_use = 10;
a = 10;

% allowed but must be avoided:
linspace = 4;

% case sensitive
clear
varb = 4;
varb
Varb

%% end.
