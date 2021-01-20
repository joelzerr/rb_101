# Write a method that takes a string, and returns a new string in which every consonant character is doubled.

# Input:
  # string

# Output:
  # string with all consonants from original doubled.

# Explicit Requirements:
  # Method must be defined to take one string as a parameter.
  # output should contain same string but with all consonants doubled.
  # vowels, digits, punctuation, and whitespace should not be doubled.

# Implicit Requirements:
  # output string length can vary depending on the input string.
  # if input string is empty, output will be empty.

# Test Cases:
  # double_consonants('String') == "SSttrrinngg"
  # double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
  # double_consonants("July 4th") == "JJullyy 4tthh"
  # double_consonants('') == ""

# Data Structure:
  # Array to iterate through and add extra characters.

# Algorithm
  # define char_value method to take a string as a parameter.
  # initialize vowels array with value of a, e, i, o, u.
  # create conditional to check if character is included in vowels.
  # if vowels includes character => char * 2
  # else => character
  # end the conditional statement and then the method.

  # define double_consonants method to take one string as a parameter.
  # intialize result variable to empty array.
  # convert string to array of characters and iterate through them.
  # on each iteration call the call the char_value method and push the return value to the result array.
  # after iterating through the collection return the result array as a string.

def double_consonants(string)
  result = []
  string.each_char do |char|
    result << char_value(char)
  end
  p result.join
end

def char_value(char)
  vowels = ['a', 'e', 'i', 'o', 'u']
  if vowels.include?(char.downcase)
    char
  elsif ('a'..'z').to_a.include?(char.downcase)
    char * 2
  else
    char
  end
end

# This is similar logic to the LS solution.  They chose to use a constant for the cosonants which allowed them to use
# a single method which is nice.
# For some reason I had decided that I wanted to see if I could do this challenge without the use of a constant.

# CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)
#
# def double_consonants(string)
#   result = ''
#   string.each_char do |char|
#     result << char
#     result << char if CONSONANTS.include?(char.downcase)
#   end
#   result
# end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
