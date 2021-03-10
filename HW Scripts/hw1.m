% Problem 1
% Determine the key and plaintext of string ciphertext

ciphertext = 'SEOYKJOEJ';

shifted = shift_cipher(ciphertext, 4);

charshifted = int_to_letter(shifted);

% plaintext = WISCONSIN, key = 4

% Problem 2
% Prove that if e(k1, x) = e(k2, x) then k1 = k2, such that for any two
% shift ciphers, if they produce the same ciphertext, then their keys must
% be equal


% Problem 3
% Use affine cipher e_k(x) = 3x + 1 to encipher PACKERS. 
% What is the decrypting function d_k(x)

plaintext_3 = affine_encrypt_cipher('PACKERS', 3, 1);
plaintext_3_char = int_to_letter(plaintext_3);

% Problem 4
% Find the affine cipher that encrypts the plaintext BC into the
% ciphertext AD

plaintext_4 = affine_encrypt_cipher('BC', 3, -2);
plaintext_4_char = int_to_letter(plaintext_4);