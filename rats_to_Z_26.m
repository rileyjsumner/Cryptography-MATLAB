function m_out = rats_to_Z_26(M, d, b)
    a = 26/d;
    for i = 1:b
        for j = 1:b
            num = M(i,j);
            while (abs(round(num) - num) >= 0.01) || (num < 0 || num > 26)
                if ~(num >= 0) ||  ~(num <= 26) || (abs(round(num) - num) >= 0.01)
                    if num <= 26 
                        num = num + a;
                    else 
                        num = num - a;
                    end
                end
            end
            M(i,j) = round(num);
        end
    end
    
    m_out = M;
end