function a = linreg2( x, y )

% Compute coefficients for linear regression
%
% Syntax:
%   a = linreg2( x, y )
%
% Input:
%   x : observed independent variables as a column vector
%   y : observed dependent variables as a column vector
%
% Output:
%   a : coefficients for approximating parabola

% Add the columns of C in a loop
C = ones( size(x, 1), 3 );

for j = 1:2
    C(:, j+1) = x.^j;
end

a = mldivide( C, y );

end