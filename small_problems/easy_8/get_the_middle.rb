# Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument.

# Input:
  # a non-empty string.

# Output:
  # a string containing 1 or 2 characters.

# Explicit Requirements:
  # Method must take one string as a parameter.
  # Method must return the middle character or characters of the string.
  # if the string is an odd number of character it should return 1 letter.
  # if string is an even number of characters it should return 2 letters.

# Implicit Requirements:
  # input string can be any length
  # return value can be any character, even blank space.

# test Cases:
  # center_of('I love ruby') == 'e'
  # center_of('Launch School') == ' '
  # center_of('Launch') == 'un'
  # center_of('Launchschool') == 'hs'
  # center_of('x') == 'x'

# Data Structure:
  # working with string as input but may need array to pull the correct middle characters out.

# Algorithm:
  # define method to take one string as a parameter.
  # create conditional
  # if string size is odd
    # string[string.size / 2]
  # else string size even
    # string[string.size / 2  - 1] + string[string.size / 2]
  # end conditional

def center_of(string)
  if string.size.odd?
    string[string.size / 2]
  else
    string[string.size / 2 - 1] + string[string.size / 2]
  end
end

# LS solution below.  Similar logic, and it made me realize I could have wrote string[string.size / 2, 2] under my else
# condition.

# def center_of(string)
#   center_index = string.size / 2
#   if string.size.odd?
#     string[center_index]
#   else
#     string[center_index - 1, 2]
#   end
# end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
