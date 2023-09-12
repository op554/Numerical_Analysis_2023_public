%% Clear all stored variables and command window (makes code reproducible)
clear;
clc;




%% Define some variables
x = 0;
y = 100;
N = 20;




%% Array structure
my_array = linspace(x,y,N); % array of 20 evenly spaced points between var1 and var2 (inclusive)
disp(my_array);

another_array = [1, 2, 3, 4, 5]; % or manually create an array
disp(another_array);

manual_matrix = [1,2,3; 4,5,6; 7,8,9];
disp(manual_matrix);





%% If loop structure

% in English: IF x equals 0 AND y is not equal to 10, OR the length of
% my_array is equal to N, THEN do [whatever is in the next line]

% Will message A, B, or C (or some combination of those) be printed?

if (x == 0) && (y ~= 10) || (size(my_array,2) == N)
    disp('Message A');
elseif x == 1
    disp('Message B');
else
    disp('Message C');
end




%% While loop structure
while 1
    disp('How many times will this message print?');
    break; % this breaks us out of the loop
end




%% For loop structure, manipulating array entries
for i=1:size(another_array,2)
    another_array(i) = another_array(i) + 3;
    % Notice that indexing begins at 1, not 0
end



%% Matrix operations

mat1 = ones(3,3); % creates a matrix with dimensions (m,n)
mat1(1,3) = 4; % change the value of the entry at index (1,3)
disp('Original matrix:');
disp(mat1);


% will these print the same thing?
disp('Matrix squared:');
disp(mat1^2);
disp('Matrix squared, pointwise:');
disp(mat1.^2);


% another useful operation
zero_mat = zeros(3,9); % make a matrix of zeros
disp(zero_mat);
zero_mat(:,1) = 2; % set the first column to be all 2s
disp(zero_mat);




%% Plotting (multiple plots, pointwise array operations, plot formatting)
figure;
subplot(2,1,1);
plot(my_array, my_array.^2); % the 2 arrays to be plotted must be the same length
title('An element-wise squared array versus itself');
xlabel('the array elements');
ylabel('the array elements squared');
subplot(2,1,2);
plot(another_array, another_array.^2);
title('Another element-wise squared array versus itself');
xlabel('the array elements');
ylabel('the array elements squared');

% see MathWorks documentation for various customizations on formatting





