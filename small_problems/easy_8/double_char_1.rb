# Write a method that takes a string, and returns a new string in which every character is doubled.

# Input:
  # string

# Output:
  # string with all characters from original doubled.

# Explicit Requirements:
  # Method must be defined to take one string as a parameter.
  # output should contain same string but with all characters doubled.

# Implicit Requirements:
  # output string should be twice as long as input.
  # if input string is empty, output will be empty.

# Test Cases:
  # repeater('Hello') == "HHeelllloo"
  # repeater("Good job!") == "GGoooodd  jjoobb!!"
  # repeater('') == ''

# Data Structure:
  # String, but may use array to add extra character.

# Algorithm:
  # define repeater method to take one string as a parameter.
  # initialize result variable to an empty array.
  # convert string to array of characters.
  # iterate through characters
  # on each iteration push character * 2 into result variable.
  # return value of result

def repeater(string)
  result = []
  string.chars.each do |char|
    result << char * 2
  end
  p result.join
end

# My approach was the same as the LS solution below. They used String#each_char which looks like it does the same thing
# as string.chars.each

# def repeater(string)
#   result = ''
#   string.each_char do |char|
#     result << char << char
#   end
#   result
# end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''
