function matx = matrix_pattern(m, n)
    matx = zeros(m, n);
    cnt = 0;
    for i = 1:m
        for j = 1:n
            if (i == 1 && j == 1)
                matx(i,j) = 1;
                cnt = cnt + 2;
            elseif (i > 1  && j == 1)
                matx(i,j) = matx(i-1,n);
                cnt = 2;
            else
                matx(i,j) = matx(i,j-1) + cnt;
                cnt = cnt + 1;
            end
        end
    end
end
