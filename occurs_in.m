function count = occurs_in(a, x)

letters = letter_to_int(x);

count = 0;

for i=1:size(letters,2)
   if((double(a)-65) == letters(i))
       count = count + 1;
   end
end

end