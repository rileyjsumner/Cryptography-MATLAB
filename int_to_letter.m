function character = int_to_letter(x)
% int to letter

character = char(x+65*ones(size(x))); % for Z_26 case
% character = char(x+32*ones(size(x))); % for Z_96 case
end