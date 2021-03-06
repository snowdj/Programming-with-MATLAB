% Write a function called top_right that takes two inputs: a matrix N and 
%   a scalar non-negative integer n, in that order, where each dimension 
%   of N is greater than or equal to n. The function returns the n-by-n 
%   square subarray of N located at the top right corner of N.
%
% input 1: N, matrix
% input 2: n, scalar such that n >= 0 & n <= dim(N)
% output: N_n, nxn subarray or N located at the top right corner of N
%
% Note: two inputs are separated by comma and in parentheses, two outputs
%   would be separeted by space and in brackets
%
% Not correct, because n = 1 would then results to a not defined index equal
%   to zero:
% function N_n = top_right(N,n)
% N_n = N(1:n,(n-1):end);
% end

function N_n = top_right(N,n)
 N_n = N(1:n,end-n+1:end);      
end