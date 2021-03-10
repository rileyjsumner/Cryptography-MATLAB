% Test Ciphers

plaintext = 'ABCD';

% Shift Cipher

shift_key = 3;

shift_ciphertext_int = shift_encrypt(plaintext, shift_key);
shift_ciphertext = int_to_letter(shift_ciphertext_int);

shift_plaintext_int = shift_decrypt(shift_ciphertext, shift_key);
shift_plaintext = int_to_letter(shift_plaintext_int);


% Affine Cipher

a_key = 15;
b_key = 7;

affine_ciphertext_int = affine_encrypt(plaintext, a_key, b_key);
affine_ciphertext = int_to_letter(affine_ciphertext_int);

affine_plaintext_int = affine_decrypt(affine_ciphertext, a_key, b_key);
affine_plaintext = int_to_letter(affine_plaintext_int);

% Vigenere Cipher

v_key = 'XOP';
vigenere_ciphertext_int = vigenere_encrypt(plaintext, v_key);
vigenere_ciphertext = int_to_letter(vigenere_ciphertext_int);

vigenere_plaintext_int = vigenere_decrypt(vigenere_ciphertext, v_key);
vigenere_plaintext = int_to_letter(vigenere_plaintext_int);


% Hill Cipher

hill_ciphertext_int = hill_encrypt('LINEARALGEBRA', [2,3;1,4]);
hill_ciphertext = int_to_letter(hill_ciphertext_int);

hill_plaintext_int = hill_decrypt(hill_ciphertext, [2,3;1,4]);
hill_plaintext = int_to_letter(hill_plaintext_int);
