function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.



X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

%               First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
%     

mu=mean(X);
for j=1: size(X,2)
    for i=1: size(X,1)
        X2(i,j)= mu(1,j);
    end
end
X1= X-X2;

sigma=std(X);
for j=1: size(X,2)
    for i=1: size(X,1)
        X_norm(i,j) = X1(i,j)/sigma(1,j);
    end
end
% ============================================================

end