function B = row2colvec(A)
% transpose a row vector to a column vector
[a,b] = size(A);

if isequal( a, 1 )
    B = A';
    return   

elseif isequal( b, 1 )
    B = A;
    return   
    
else
    error('row2colvec:   not a row vector or column vector')
end

end