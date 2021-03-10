function int_value = letter_to_int(x)
%
int_value = double(x)-65*ones(size(x)); % for Z_26
% int_value = double(x) - 32 * ones(size(x));   % for Z_96

end