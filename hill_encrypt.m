function out = hill_encrypt(x, M)
% Hill Cipher

% convert plaintext to matrix

block_size = size(M,1);

if(mod(strlength(x),2) == 1) 
    x = strcat(x,'Z');
end

x_int = double(x) - 65;

P = reshape(x_int,block_size,strlength(x)/2);

E = mod(M * P, 26);

% ciphertext = mod(M*x,26)

out = reshape(E,1,strlength(x));
end