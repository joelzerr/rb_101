# Write a method that returns the next to last word in the String passed to it as an argument.

# Input:
  # string of multiple words

# Output:
  # a one word string

# Explicit Requirements:
  # - method must be defined to take one string as a parameter.
  # - Method must return the next to last word.
  # - Method must return a single word string.

# Implicit Requirements:
  # - words are any sequence of non-blank characters.
  # - input string will always contain at least 2 words.

# Test Cases:
  # penultimate('last word') == 'last'
  # penultimate('Launch School is great!') == 'is'

# Data Structure:
  # input and output are strings but we may need to use array to access the appropriate word.

# Algorithm:
  # - define method to take a string as a parameter.
  # - split the string into an array of words.
  # - use method chaining to return the value of -2 index.

def penultimate(string)
  string.split[-2]
end

# My solution is essentially the same as the LS solution below.

# def penultimate(words)
#   words_array = words.split
#   words_array[-2]
# end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
