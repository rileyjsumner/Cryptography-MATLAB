% HW 4

% ---- PROBLEM 1 ---- %
disp('START PROBLEM 1');

% What is the smallest acceptable text length n to ensure that the
% empirical letter count frequency for the letter "T" will be less than
% 0.13 with probability >= 0.96.

% P_t = (n choose t) * p^t(1 - p)^(n-t)

% sigma = 0.34*sqrt(n)

% a = 233
% b = 321
% c = 74


% ---- PROBLEM 2 ---- %
disp('START PROBLEM 2');

% L = { A,B,C,D,E,F,S,T };
% N = { 1,2,3,4,5,6,7,8 };

ciphertext_2 = 'TCEFTCCDSACBSDSACF';
ciphertext_int_2 = [8 3 5 6 8 3 3 4 7 1 3 2 7 4 7 1 3 8];
    
% % A B C D E F S T
% A 0 0 0 0 0 0 2 0 
% B 0 0 1 0 0 0 0 0
% C 2 0 1 0 0 0 0 2
% D 0 0 1 0 0 0 0 1
% E 0 0 1 0 0 0 0 0
% F 0 0 1 0 1 0 0 0
% S 0 1 0 2 0 0 0 0
% T 0 0 0 0 0 2 0 0

DM_T = [0 0 0 0 0 0 2 0;
      0 0 1 0 0 0 0 0;
      2 0 1 0 0 0 0 2;
      0 0 1 0 0 0 0 1;
      0 0 1 0 0 0 0 0;
      0 0 1 0 1 0 0 0;
      0 1 0 2 0 0 0 0;
      0 0 0 0 0 2 0 0;];

DM = transpose(DM_T);
  
DM_11 = digraph_count(ciphertext_int_2, 8);

c = zeros(1,8);
v = zeros(1,8);

v(2) = 1;

v_1 = [1 0 1 0 0 0 0 0];
c_1 = [0 1 0 1 1 1 1 1];

v_2 = [0 1 1 0 0 0 0 0];
c_2 = [1 0 0 1 1 1 1 1];

v_4 = [0 0 1 1 0 0 0 0];
c_4 = [1 1 0 0 1 1 1 1];

v_5 = [0 0 1 0 1 0 0 0];
c_5 = [1 1 0 1 0 1 1 1];

v_6 = [0 0 1 0 0 1 0 0];
c_6 = [1 1 0 1 1 0 1 1];

v_7 = [0 0 1 0 0 0 1 0];
c_7 = [1 1 0 1 1 1 0 1];

v_8 = [0 0 1 0 0 0 0 1];
c_8 = [1 1 0 1 1 1 1 0];

% TD_1 = (v_1 * DM * v) * (c_1 * DM * c) - (v_1 * DM * c) * (c_1 * DM * v);

TD_1 = (v_1 * DM * transpose(v_1)) * (c_1 * DM * transpose(c_1)) - (v_1 * DM * transpose(c_1)) * (c_1 * DM * transpose(v_1));
TD_2 = (v_2 * DM * transpose(v_2)) * (c_2 * DM * transpose(c_2)) - (v_2 * DM * transpose(c_2)) * (c_2 * DM * transpose(v_2));
TD_3 = (v_3 * DM * transpose(v_3)) * (c_3 * DM * transpose(c_3)) - (v_3 * DM * transpose(c_3)) * (c_3 * DM * transpose(v_3));
TD_4 = (v_4 * DM * transpose(v_4)) * (c_4 * DM * transpose(c_4)) - (v_4 * DM * transpose(c_4)) * (c_4 * DM * transpose(v_4));
TD_5 = (v_5 * DM * transpose(v_5)) * (c_5 * DM * transpose(c_5)) - (v_5 * DM * transpose(c_5)) * (c_5 * DM * transpose(v_5));
TD_6 = (v_6 * DM * transpose(v_6)) * (c_6 * DM * transpose(c_6)) - (v_6 * DM * transpose(c_6)) * (c_6 * DM * transpose(v_6));
TD_7 = (v_7 * DM * transpose(v_7)) * (c_7 * DM * transpose(c_7)) - (v_7 * DM * transpose(c_7)) * (c_7 * DM * transpose(v_7));
TD_8 = (v_8 * DM * transpose(v_8)) * (c_8 * DM * transpose(c_8)) - (v_8 * DM * transpose(c_8)) * (c_8 * DM * transpose(v_8));

% TD_5_T = (transpose(v_5) * DM * v_5) * (transpose(c_5)*DM*c_5) - (transpose(v_5) * DM * c_5) * (transpose(c_5) * DM * v_5);

% ---- PROBLEM 3 ---- %
disp('START PROBLEM 3');

ciphertext_3 = 'NETERECMGTISHENHGATGGCFICHISGSTGEFECMDEHHETHNTIARHEHCICG';
% A
% B
% C
% D
% E 9
% F
% G
% H
% I
% M 
% N
% R
% S
% T

count_a = occurs_in('A', ciphertext_3);
count_b = occurs_in('B', ciphertext_3);
count_c = occurs_in('C', ciphertext_3);
count_d = occurs_in('D', ciphertext_3);
count_e = occurs_in('E', ciphertext_3);
count_f = occurs_in('F', ciphertext_3);
count_g = occurs_in('G', ciphertext_3);
count_h = occurs_in('H', ciphertext_3);
count_i = occurs_in('I', ciphertext_3);
count_m = occurs_in('M', ciphertext_3);
count_n = occurs_in('N', ciphertext_3);
count_r = occurs_in('R', ciphertext_3);
count_s = occurs_in('S', ciphertext_3);
count_t = occurs_in('T', ciphertext_3);


% 'NETERECMGTISHENHGATGGCFICHISGSTGEFECMDEHHETHNTIARHEHCICG';
% Alphabet = { A,B,C,D,E,F,G,H,I,M ,N ,R ,S ,T  }
% Numbers  = { 0,1,2,3,4,5,6,7,8,9 ,10,11,12,13 }

% v_set = { E, I }
% c_set = { A,B,C,D,F,G,H,M,N,R,S,T }

test_14 = letter_to_int14('ABCDEFGHIMNRST');
disp(test_14);

% 5x + 8
% x + 3 (x)
% 11x + 4

DM_3 = digraph_count(letter_to_int14(ciphertext_3),14);



