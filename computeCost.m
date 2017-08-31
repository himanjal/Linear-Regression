function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

H = zeros(m,1);
index = 1;
for i = transpose(X)
	H(index) = transpose(theta)* i;
	index = index + 1;
endfor

cost_matrix = H-y;
total_Cost = 0;
index = 0;
do
	index++;
	total_Cost = total_Cost+(cost_matrix(index)*cost_matrix(index));
until(index == m)

J = total_Cost/(2*m);


% =========================================================================

end
