function a = linreg( x, y )

% Compute coefficients for linear regression
%
% Syntax:
%   a = linreg( x, y )
%
% Input:
%   x : observed independent variables as a column vector
%   y : observed dependent variables as a column vector
%
% Output:
%   a : coefficients for approximating straight line

C = [ ones(size(x)) x ];

a = mldivide( C, y );

end