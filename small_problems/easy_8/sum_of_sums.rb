# Write a method that takes an Array of numbers and then returns the sum of the sums of each leading
# subsequence for that Array.

# Input:
  # array of numbers

# Output:
  # an integer

# Explicit Requirements:
  # method must take an array as an argument.
  # must return sum of sums of each leading subsequence.

# Implicit Requirements:
  # The input array will always contain atleast 1 number.
  # each subsequence will always start with the integer at index 0.

# Test Cases:
  # sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
  # sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
  # sum_of_sums([4]) == 4
  # sum_of_sums([1, 2, 3, 4, 5]) == 35

# Data Structure:
  # input is an array, but we will be pulling element from the array and working with integers.
  # our final output will be an integer.

# Algorithm:
  # first define sum_of_sums method to take an array as a parameter.
  # intialize current_sum and set it equal to 0.
  # initialize counter and set it to 0.
  # start a simple loop to iterate through array.
  # on each iteration reassign current_sum to current_sum + array[0..counter].sum
  # increment counter += 1
  # break if counter == array.size
  # return value of current_sum

def sum_of_sums(array)
  current_sum = 0
  counter = 0
  loop do
    current_sum += array[0..counter].sum
    counter +=1
    break if counter == array.size
  end
  current_sum
end

# One of the LS solutions below used a similar approach and it is nice to see how this can be done with an iterator
# like each because I was unsure about this which is why I stuck to a simple loop.

# def sum_of_sums(numbers)
#   sum_total = 0
#   accumulator = 0
#
#   numbers.each do |num|
#     accumulator += num
#     sum_total += accumulator
#   end
#
#   sum_total
# end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35
