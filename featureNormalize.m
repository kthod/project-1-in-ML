function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

len= length(X(:,1));
mu=zeros(1,2);
mu=sum(X,1)/len;
%%m1=mean(aRatio(1:size1))

%%mu =mean(X); % mean of each column (feature)
t_mu=ones(len,1)*mu;
sigma=zeros(1,2);

sigma=sqrt(sum(((X-t_mu).^2),1)/(len-1));

%%sigma =std(X);% standart deviation of each column
t_sigma=ones(len,1)*sigma;


X_norm =(X-t_mu)./t_sigma; % normalize each column independently


% ============================================================

end
