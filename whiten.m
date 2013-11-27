function [X] = whiten(X,fudgefactor)
% fudgefactor should be around 1e-6 times the largest eigenvalue of X
%       it ensures eigenvectors associated with small eigenvalues do not
%       get overamplified
X = bsxfun(@minus, X, mean(X));
A = X'*X;
[V,D] = eig(A);
X = X*V*diag(1./(diag(D)+fudgefactor).^(1/2))*V';
end