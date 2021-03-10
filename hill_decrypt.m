function out = hill_decrypt(x,M)
    
block_size = size(M,1);

x_int = double(x) - 65;

D = inv(M);
rats(D)

d = input('Inverse Matrix Denominator:');

D = rats_to_Z_26(D,d,block_size);

P = reshape(x_int,block_size,strlength(x)/2);
E = mod(D * P, 26);

out = reshape(E,1,strlength(x));

end