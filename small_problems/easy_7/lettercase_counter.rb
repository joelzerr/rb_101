# write a method that takes a string and returns a hash that contains 3 entries.
# one for the number of lowercase letters, one for uppercase and one for neither.

# Input:
  # - String with a mix of characters.

# Output:
  # - Hash with 3 key value pairs.

# Explicit Requirements:
  # - Method needs to take a string as an argument.
  # - Needs to return a hash.
  # - Must have 3 key value pairs.
  # - 1 pair for lowercase letters, 1 for uppercase, 1 for everything else.

# Implicit Requirements:
  # - If the string doesn't contain a certain type of character then that entry should be represented by a 0.
  # - Input string can be any length.
  # - 'space' counts as a character.

# Test Cases:
  # letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
  # letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
  # letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
  # letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

# Data Structure:
  # - We will likely need to break the input string up into an array of characters.
  # - Also may need arrays that represent the upper and lower case letters.
  # - obviously we will have to return a hash.

# Algorithm:
  # - Start by making a constant that is an array for the upper and lower case letters.
  # - define the method and set to take one string as an argument.
  # - We will set case_count as an empty hash.
  # - The string will then be broken up into an array of characters.
  # - The the characters array will then be compared to each constant.
  # - The case_count will take the keys lowercase, uppercase, and neither with their corresponding values.
  # - Then case_count will be returned.

LOWERCASE_LETTERS = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's',
't', 'u', 'v', 'w', 'x', 'y', 'z']

UPPERCASE_LETTERS = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
'T', 'U', 'V', 'W', 'X', 'Y', 'Z']

# After looking at the solution I realized I could write the above constants like this:

# LOWERCASE_LETTERS = ('a'..'z').to_a
# UPPERCASE_LETTERS = ('A'..'Z').to_a

def letter_case_count(string)
  case_count = {}
  case_count[:lowercase] = (string.chars.select {|char| LOWERCASE_LETTERS.include?(char)}).count
  case_count[:uppercase] = (string.chars.select {|char| UPPERCASE_LETTERS.include?(char)}).count
  case_count[:neither] = (string.chars.delete_if {|char| LOWERCASE_LETTERS.include?(char) || UPPERCASE_LETTERS.include?(char)}).count
  case_count
end

# Although my solution above works the logic in the LS solution is much cleaner.
# The Second solution uses some regex which looks like it makes things much simpler.

# Solution 1

# UPPERCASE_CHARS = ('A'..'Z').to_a
# LOWERCASE_CHARS = ('a'..'z').to_a
#
# def letter_case_count(string)
#   counts = { lowercase: 0, uppercase: 0, neither: 0 }
#
#   string.chars.each do |char|
#     if UPPERCASE_CHARS.include?(char)
#       counts[:uppercase] += 1
#     elsif LOWERCASE_CHARS.include?(char)
#       counts[:lowercase] += 1
#     else
#       counts[:neither] += 1
#     end
#   end
#
#   counts
# end

# Solution 2

# def letter_case_count(string)
#   counts = {}
#   characters = string.chars
#   counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
#   counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
#   counts[:neither] = characters.count { |char| char =~ /[^A-Za-z]/ }
#   counts
# end

# char =~ /[a-z]/ : This checks if the character is a lowercase letter between a and z.
# char =~ /[A-Z]/ : This checks if the character is an uppercase letter between A and Z.
# char =~ /[^A-Za-z]/ : This checks if the character is neither an uppercase letter nor a lowercase letter.


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
