function a = linregn( x, y, n )

C = ones( size(x, 1), n + 1 );

for j = 1:n
    C(:, j+1) = x.^j;
end

a = inv(C' * C) * C' * y;


end