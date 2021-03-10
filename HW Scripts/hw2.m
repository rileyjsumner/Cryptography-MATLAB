% HW 2

% ---- PROBLEM 1 ---- %
disp('START PROBLEM 1');

% Prime Factorization of 49
%   7^2

% Prime Factorization of 256
%   2^8

disp('gcd(256, 49: ');
disp(gcd(256, 49));

% Because 256 and 49 do not share any common factors in their prime
% factorizations, we can conclude that gcd(256,49) is 1.

% Conduct an extended Euclidean algorithm to compute the multiplicative
% inverse of 49 in Z_256

mult_inverse = multiplicative_inverse(256, 49);
disp('mult_inverse: ');
disp(mult_inverse);


% ---- PROBLEM 2 ---- %
disp('START PROBLEM 2');

ciphertext = 'LMNYBJOZWGN';
test = 'IL';

% The first two characters of the affine encryption are IL

test_int = affine_encrypt(test, 9, -9);
test_plain = int_to_letter(test_int);

plaintext_int = affine_decrypt(ciphertext, 9, -9);
plaintext = int_to_letter(plaintext_int);

% 2a) a = 9
% 2a) b = -9

% 2b plaintext = ILOVECRYPTO

% ---- PROBLEM 3 ---- %
disp('START PROBLEM 3');

M1 = [9,2;13,3];

det_M1 = det(M1);
disp(det_M1); % 3a

inv_M1 = inv(M1);
disp(mod(inv_M1,26)); % 3a

hill_ciphertext = 'TZRUOOEZBW';

hill_plaintext = int_to_letter(hill_decrypt(hill_ciphertext,M1));

% plaintext = HELLOWORLD


% ---- PROBLEM 4 ---- %

disp('START PROBLEM 4');

MM = [3,7,8; 15,4,23; 7,0,8];

det_MM = det(MM);
disp(mod(det_MM, 26));

inv_MM = inv(MM);
disp(inv_MM);
disp(rats(inv_MM));

disp(rats_to_Z_26(inv_MM,53,3));

% ---- PROBLEM 5 ----- %
disp('START PROBLEM 5');

shift_ciphertext = 'LCLLEWLJAZLNNZMVYIYLHRMHZA';

disp(strcat(num2str(7), int_to_letter(shift_decrypt(shift_ciphertext,7))));


% since e is most common letter in english alphabet, key is 7 because L
% shows up most frequently
