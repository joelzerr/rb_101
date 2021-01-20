# Write a method that takes a string as an argument and returns a new string in which every uppercase letter
# is replaced by its lowercase version, and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# Input:
  # - string

# Output
  # - String with uppcase and lowercase letters swapped.

# Explicit Requirements:
  # - Method must take one string as an argument.
  # - Lowercase letterd must be replaced by uppercase and uppercase letters must be replaced with lowercase.
  # - All other characters must be unchanged.
  # - Use of String#swapcase is prohibitted.

# Implicit Requirements:
  # - Input string can be one or more characters in length.

# Test Cases:
  #swapcase('CamelCase') == 'cAMELcASE'
  #swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# Data Structure:
  # - input and output are strings but I think using an array to iterate through the characters will be useful.

# Algorithm:
  # - first define the swapcase method to take a string as a parameter.
  # - split the individual words in the string into an array.
  # - iterate over each word in the array
  # - iterate over each character of each word
  # - if the character is included in A-Z then character is downcased.
  # - elsif the character is included in a-z then character is upcased.
  # - else the character is included in neither range then skip.
  # - lastly the array of strings will be joined and returned as a string.

UPPERCASE = ('A'..'Z').to_a
LOWERCASE = ('a'..'z').to_a

def swapcase(string)
  swap = string.chars.map do |char|
      if UPPERCASE.include?(char)
        char.downcase
      elsif LOWERCASE.include?(char)
        char.upcase
      else
        char
      end
    end
  swap.join
end

# The LS solution below is essentially the same approach, but uses regex instead of constants.

# def swapcase(string)
#   characters = string.chars.map do |char|
#     if char =~ /[a-z]/
#       char.upcase
#     elsif char =~ /[A-Z]/
#       char.downcase
#     else
#       char
#     end
#   end
#   characters.join
# end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
