function [pwr]=Power(X_i,X,Y_i,Y)

% X_i index of first array
% X Array of values
% Y_i index of second array
% Y array of values

if(length(X) ~= length(Y))
    error('Array length not equal')
end

comp = [X_i,Y_i];

switch comp
    case 'vi'
        pwr = X.*Y;
    case 'iv'
        pwr = X.*Y;
    case 'vr'
        pwr = (X.^2)./Y;
    case 'rv'
        pwr = (Y.^2)./X;
    
    case 'ir'
        pwr = X.^2.*Y;
    case 'ri'
        pwr = Y.^2.*X;
    otherwise
        error('No case')
end







end
