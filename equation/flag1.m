pmat = zeros(26,26);
pvec = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101];
for ii = 1:26
    pmat(ii, :) = sqrt(pvec);
    pvec = pvec([26 1:25]);
end
result = [16404, 16416, 16512, 16515, 16557, 16791, 16844, 16394, 15927, 15942, 15896, 15433, 15469, 15553, 15547, 15507, 15615, 15548, 15557, 15677, 15802, 15770, 15914, 15957, 16049, 16163];
flag = pmat\result';
flag_str = char(round(flag'))