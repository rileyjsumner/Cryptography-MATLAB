function y_out = affine_encrypt(x, a, b)
%affine cipher
%
y_out = mod((a*(double(x)-65))+b, 26);
end

