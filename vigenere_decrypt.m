function out = vigenere_decrypt(x, k)

    key = double(k) - 65;
    ciphertext = double(x) - 65;
    size = strlength(x);
    key_size = strlength(k);
    
    out = zeros(1, size);
    
    for i = 1:size
        curr_key = (mod(i,key_size));
        if mod(i,key_size) == 0
            curr_key = 3;
        end
        out(i) = mod(ciphertext(i)-key(curr_key),26);
    end
end