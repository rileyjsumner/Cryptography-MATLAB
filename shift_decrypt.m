function int_value = shift_decrypt(x, a)
%
shift = mod(double(x)-65 - a, 26) + a;
int_value = shift-a*ones(size(x));
end