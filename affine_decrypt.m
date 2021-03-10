function out = affine_decrypt(x, a, b)
% Affine Decrypt

out = mod((floor(double(x)-65-b)*modinv(a,26)),26);
end