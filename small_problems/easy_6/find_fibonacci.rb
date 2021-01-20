# Write a method that calculates and returns the index of the first Fibonacci number with the number of digits
# given as an agrument.

# Input:
  # - Integer that represents the number of digits.

# Output:
  # - Integer that represents an index.

# Explicit Requirments:
 # - Argument will always be equal to or greater than 2.
 # - First 2 numbers are 1 by definition
 # - Each subsequent number is the sum of the previous numbers.
 # - First fibonacci number has an index of 1.

# Implicit Requirements:
  # - Method should be able to take any number as an argument.

# Test Cases:
 # - find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
 # - find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
 # - find_fibonacci_index_by_length(10) == 45
 # - find_fibonacci_index_by_length(100) == 476
 # - find_fibonacci_index_by_length(1000) == 4782
 # - find_fibonacci_index_by_length(10000) == 47847

# Data Structure:
  # - I am working with integers on this challenge.
  # - However it is possible that I may have to convert to a string or an array of characters to count the digits.

# Mental Model:
  # - I should build the logic for the fibonacci sequence, where starting with 1, 1... each next integer is the sum
  # - of the previous integers.
  # - The method should iterate through each number in the sequence and check if that number has the amount of digits
  # - equal to the argument.
  # - The index - 1 should then be saved for that number, and then used as the output.


def find_fibonacci_index_by_length(num)
  fibonacci = [1,1]
  loop do
    break if fibonacci.last.to_s.chars.count == num
    fibonacci << fibonacci[-1] + fibonacci[-2]
  end
  fibonacci.index(fibonacci.last) + 1
end

p find_fibonacci_index_by_length(2) == 7
p find_fibonacci_index_by_length(3) == 12
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
