function [U, S] = myPCA(X)
%PCA Run principal component analysis on the dataset X
%   [U, S, X] = myPCA(X) computes eigenvectors of the covariance matrix of X
%   Returns the eigenvectors U, the eigenvalues (on diagonal) in S
%

% Useful values
[m, n] = size(X);

% You need to return the following variables correctly.


% ====================== YOUR CODE GOES HERE ======================
% Apply PCA by computing the eigenvectors and eigenvalues of the covariance matrix. 
%
if(n<=m) 
    R=(transpose(X)*X)/m;
    U=zeros(n,n);
    S=zeros(n,n);
else
    R=(X*transpose(X))/m;
    S=zeros(m,m);
    U=zeros(m,m);
end;

[t_U,t_S]=eig(R);
ev=diag(t_S);
[ev,I]=sort(ev,'descend');

for i=1:length(I)
    U(:,i)=t_U(:,I(i));
    S(i,i)=t_S(I(i),I(i));
end;
% =========================================================================

end
