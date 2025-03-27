%% Fibonacci Sequence Generator
% This function generates and displays the Fibonacci sequence up to a specified
% number of terms. The Fibonacci sequence is a series of numbers where each
% number is the sum of the previous two numbers.
%
% Example usage:
%   fibonacci_sequence(8)  % Generates: 0, 1, 1, 2, 3, 5, 8, 13
%   fibonacci_sequence(5)  % Generates: 0, 1, 1, 2, 3
%
% Parameters:
%   num_terms - The number of terms to generate in the sequence (integer ≥ 1)
%
% Note: The sequence always starts with 0 and 1

function fibonacci_sequence(num_terms)
    % Initialize the first two terms of the sequence
    fib_sequence = [0, 1];
    
    % Input validation
    if num_terms < 1
        disp('Number of terms should be greater than or equal to 1.');
        return;
    elseif num_terms == 1
        fprintf('Fibonacci Sequence:\n%d\n', fib_sequence(1));
        return;
    elseif num_terms == 2
        fprintf('Fibonacci Sequence:\n%d\n%d\n', fib_sequence(1), fib_sequence(2));
        return;
    end
    
    % Calculate and display the Fibonacci sequence
    for i = 3:num_terms
        fib_sequence(i) = fib_sequence(i-1) + fib_sequence(i-2);
    end
    
    fprintf('Fibonacci Sequence:\n');
    disp(fib_sequence);
end

%% Example Test Cases
% Uncomment the following lines to test the function:
%
% fibonacci_sequence(8)   % Should output: 0 1 1 2 3 5 8 13
% fibonacci_sequence(1)   % Should output: 0
% fibonacci_sequence(2)   % Should output: 0 1
% fibonacci_sequence(0)   % Should show error message
