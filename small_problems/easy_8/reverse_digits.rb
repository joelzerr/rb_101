# Write a method that takes a positive integer as an argument and returns that number with its digits reversed.

# Input:
  # a positive number of any value.

# Output:
  # number with digits in reverse.

# Explicit Requirements:
  # method must be defined to take a single number as a parameter.
  # Return value must be a number with same digits in reverse order.

# Implicit Requirements:
  # No leading zeros in the return value.
  # Number will be the same length unless the input ends in any number of zeros.

# Test Cases:
  # reversed_number(12345) == 54321
  # reversed_number(12213) == 31221
  # reversed_number(456) == 654
  # reversed_number(12000) == 21 # No leading zeros in return value!
  # reversed_number(12003) == 30021
  # reversed_number(1) == 1

# Data Structure:
  # we are working with integers, but we may need array to iterate through and flip the order.

# Algorithm:
  # define reversed_number method to take a number as a parameter.
  # initialize result as an empty array.
  # convert number to string, reverse the string, then convert to an array of characters.
  # iterate through the characters
  # for each iteration push character into result.
  # After iterating through, return the value of the result array converted to a string then an integer.


def reversed_number(number)
  result = []
  number.to_s.reverse.chars.each do |char|
      result << char
    end
  result.join.to_i
end

# So I got really confused on this one before I figured it out.  I was over thinking how to account for the leading
# zeros.  I didn't realize that when you convert a string of numbers with leading zeros to an integer it will not
# view those zeros as part of the number. '00021'.to_1 => 21

# The LS solution below takes a much more logical approach.

# def reversed_number(number)
#   string = number.to_s
#   reversed_string = string.reverse
#   reversed_string.to_i
# end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
