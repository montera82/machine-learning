function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
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
% Hint: You might find the 'mean' and 'std' functions useful.
%       

mu = mean(X); % e.g [1 , 2]
sigma = std(X); % same as above

for i =1:size(X) 
   X_norm(i,:) = (X(i,:) - mu ) ./ sigma
end   

% Old solution
%for iter = 1:size(X,2) %looping through each feature represented in X
%    fprintf('inside feature no. %f', iter);
%    currentFeature = X(:,iter); % get the current feature
%    mu(iter) = mean(currentFeature); % get mean of the current feature and store it
%   sigma(iter) = std(currentFeature);

%    for j = 1:length(currentFeature) %loop through each data item of the first feature
%        X_norm(j, iter) = ( currentFeature(j) - mu(iter) ) / sigma(iter) ;
%   end
% end


% ============================================================

end
