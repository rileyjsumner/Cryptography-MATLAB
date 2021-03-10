% hw3

% ---- PROBLEM 1 ---- %
disp('START PROBLEM 1');

% All values in Z_26_star are achievable as the determinite of a matrix of
% Z_26

% Any combination of elements in Z_26 could create admissible matrices in
% the adjugate matrix

% Yes, because the size of the keyspace is scaled based on N to the power
% of n^2

% ---- PROBLEM 2 ---- %
disp('START PROBLEM 2');

% There are 98 letter tiles in a bag
% How likely is it you draw 7 E's in a row?

% Since there are 12 E's in the bag, the probability of drawing the first E
% would be 12/98. Each time you draw, there is 1 fewer E in the bag so your
% odds would be 11/97, 10/96, etc. until you drew 7 tiles

prob_7_e = (12/98) * (11/97) * (10/96) * (9/95) * (8/94) * (7/93) * (6/92);

% def have a rounding error here
fprintf('There is a %f percent chance of drawing 7 E tiles in a row\n', (prob_7_e * 100));

% Next we draw 3 tiles, determing the odds the first 3 tiles drawn are an
% H, E or N. There are in total 20 tiles between the 3 letters.

prob_h_e_n = (20/98) * (19/97) * (18/96);
fprintf('There is a %f percent chance of drawing 3 H, E or N tiles in a row\n', (prob_h_e_n * 100));

% ---- PROBLEM 3 ---- %
disp('START PROBLEM 3');

% Z_8 = { A,B,C,D,E,F,S,T }
P = [0.2195, 0.0488, 0.0488, 0.0976, 0.2927, 0.0488, 0.0976, 0.1462];
% where P is the frequency of each letter

ciphertext_Z_8_0 = 'TCEFTCCDSACBSDSACF';
ciphertext_Z_8_1 = 'ADFSADDETBDCTETBDS';
ciphertext_Z_8_2 = 'BESTBEEFACEDAFACET';
ciphertext_Z_8_3 = 'CFTACFFSBDFEBSBDFA';
ciphertext_Z_8_4 = 'DSABDSSTCESFCTCESB';
ciphertext_Z_8_5 = 'ETBCETTADFTSDADFTC';
ciphertext_Z_8_6 = 'FACDFAABESATEBESAD';
ciphertext_Z_8_7 = 'SBDESBBCFTBAFCFTBE';

% This text was created using a shift cipher in Z_8 — for each of the
% possible shifts in Z_8, compute the resulting frequency of occurence of
% each of the characters and the associated empirical probability for each
% character.

% Solution will be 8 arrays composed of 8 real values, in the same form as
% P above

% A = 0
% B = 1
% C = 2
% D = 3
% E = 4
% F = 5
% S = 6
% T = 7

% For each Q^k, compute its correlation with the given P
size = strlength(ciphertext_Z_8_0);

num_a = occurs_in('B',ciphertext_Z_8_0);

% part a: Q_k
Q_0 = [(occurs_in('A',ciphertext_Z_8_0)/size) (occurs_in('B',ciphertext_Z_8_0)/size) (occurs_in('C',ciphertext_Z_8_0)/size) (occurs_in('D',ciphertext_Z_8_0)/size) (occurs_in('E',ciphertext_Z_8_0)/size) (occurs_in('F',ciphertext_Z_8_0)/size) (occurs_in('S',ciphertext_Z_8_0)/size) (occurs_in('T',ciphertext_Z_8_0)/size)];
Q_1 = [(occurs_in('A',ciphertext_Z_8_1)/size) (occurs_in('B',ciphertext_Z_8_1)/size) (occurs_in('C',ciphertext_Z_8_1)/size) (occurs_in('D',ciphertext_Z_8_1)/size) (occurs_in('E',ciphertext_Z_8_1)/size) (occurs_in('F',ciphertext_Z_8_1)/size) (occurs_in('S',ciphertext_Z_8_1)/size) (occurs_in('T',ciphertext_Z_8_1)/size)];
Q_2 = [(occurs_in('A',ciphertext_Z_8_2)/size) (occurs_in('B',ciphertext_Z_8_2)/size) (occurs_in('C',ciphertext_Z_8_2)/size) (occurs_in('D',ciphertext_Z_8_2)/size) (occurs_in('E',ciphertext_Z_8_2)/size) (occurs_in('F',ciphertext_Z_8_2)/size) (occurs_in('S',ciphertext_Z_8_2)/size) (occurs_in('T',ciphertext_Z_8_2)/size)];
Q_3 = [(occurs_in('A',ciphertext_Z_8_3)/size) (occurs_in('B',ciphertext_Z_8_3)/size) (occurs_in('C',ciphertext_Z_8_3)/size) (occurs_in('D',ciphertext_Z_8_3)/size) (occurs_in('E',ciphertext_Z_8_3)/size) (occurs_in('F',ciphertext_Z_8_3)/size) (occurs_in('S',ciphertext_Z_8_3)/size) (occurs_in('T',ciphertext_Z_8_3)/size)];
Q_4 = [(occurs_in('A',ciphertext_Z_8_4)/size) (occurs_in('B',ciphertext_Z_8_4)/size) (occurs_in('C',ciphertext_Z_8_4)/size) (occurs_in('D',ciphertext_Z_8_4)/size) (occurs_in('E',ciphertext_Z_8_4)/size) (occurs_in('F',ciphertext_Z_8_4)/size) (occurs_in('S',ciphertext_Z_8_4)/size) (occurs_in('T',ciphertext_Z_8_4)/size)];
Q_5 = [(occurs_in('A',ciphertext_Z_8_5)/size) (occurs_in('B',ciphertext_Z_8_5)/size) (occurs_in('C',ciphertext_Z_8_5)/size) (occurs_in('D',ciphertext_Z_8_5)/size) (occurs_in('E',ciphertext_Z_8_5)/size) (occurs_in('F',ciphertext_Z_8_5)/size) (occurs_in('S',ciphertext_Z_8_5)/size) (occurs_in('T',ciphertext_Z_8_5)/size)];
Q_6 = [(occurs_in('A',ciphertext_Z_8_6)/size) (occurs_in('B',ciphertext_Z_8_6)/size) (occurs_in('C',ciphertext_Z_8_6)/size) (occurs_in('D',ciphertext_Z_8_6)/size) (occurs_in('E',ciphertext_Z_8_6)/size) (occurs_in('F',ciphertext_Z_8_6)/size) (occurs_in('S',ciphertext_Z_8_6)/size) (occurs_in('T',ciphertext_Z_8_6)/size)];
Q_7 = [(occurs_in('A',ciphertext_Z_8_7)/size) (occurs_in('B',ciphertext_Z_8_7)/size) (occurs_in('C',ciphertext_Z_8_7)/size) (occurs_in('D',ciphertext_Z_8_7)/size) (occurs_in('E',ciphertext_Z_8_7)/size) (occurs_in('F',ciphertext_Z_8_7)/size) (occurs_in('S',ciphertext_Z_8_7)/size) (occurs_in('T',ciphertext_Z_8_7)/size)];


% part b: compute correlation with given p
dot_0 = dot(Q_0, P);
dot_1 = dot(Q_1, P);
dot_2 = dot(Q_2, P);
dot_3 = dot(Q_3, P);
dot_4 = dot(Q_4, P);
dot_5 = dot(Q_5, P);
dot_6 = dot(Q_6, P);
dot_7 = dot(Q_7, P);



% ---- PROBLEM 4 ---- %
disp('START PROBLEM 4');

% # of matrices = N*n^2(1-p^1:n) for p = {2 | 3}

jordan = 96^16*(1/2)*(2/3)*(3/4)*(8/9)*(7/8)*(26/27)*(15/16)*(80/81);

% Size of the keyspace should be same as ${jordan}

% I think the size of the keyspace would be 96(1-1/2)(1-1/3) or 32, then
% mult by 96 again.


