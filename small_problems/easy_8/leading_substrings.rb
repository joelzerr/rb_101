# Write a method that returns a list of all substrings of a string that start at the beginning of the original string.

# Input:
  # string

# Output:
  # array of substrings

# Explicit Requirements:
  # method should take one string as an argument
  # all substrings start at beginning of original string.
  # substrings must be arranged from shortest to longest.

# Implicit Requirements:
  # input string will always be a single word string.

# Test Cases:
  # leading_substrings('abc') == ['a', 'ab', 'abc']
  # leading_substrings('a') == ['a']
  # leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# Data Structure:
  # input is string but will need to store substrings into an array and possibly need to convert input into an array in
  # order iterate through it.

# Algorithm:
  # first define leading_substrings method to take a string as a parameter.
  # initialize substring_arr as an empty array.
  # initialize counter equal to 0.
  # next initialize convert_str to an array of characters from the input string.
  # iterate through the array of characters using a simple loop.
  # on each iteration substring_arr << convert_str[0..counter]
  # increment counter += 1
  # break if counter == convert_str.size
  # return substring_arr

def leading_substrings(string)
  substring_arr = []
  counter = 0
  loop do
    substring_arr << string[0..counter]
    counter += 1
    break if counter == string.size
  end
  substring_arr
end

# The LS solution uses the #upto method again that I still haven't gotten comfortable using yet.  I usually forget that
# it is an option for problems like this.

# def leading_substrings(string)
#   result = []
#   0.upto(string.size - 1) do |index|
#     result << string[0..index]
#   end
#   result
# end


p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
