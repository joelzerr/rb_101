# Write a method that takes a string argument and returns a new string that contains
# the value of the original string with all consecutive duplicate characters collapsed into a single character.

# Input:
  # String with duplicate letters

# Output:
  # Value of the string argument without consecutive duplicate letters

# Explicit Requirements:
  # - Method must take a string as an argument.
  # - It should return a string with consecutive duplicate characters collapsed to single characters.

# Implicit Requirements:
  # - Letters can appear more than once just not consecutively.

# Mental Model:
  # This challenge requires me to write a method than can remove consecutive duplicate Letters
  # so that the chracters are collapsed into single characters.
  # This is a bit more complex then simply removing all duplicated characters, because we want to be able to
  # keep letters that appear multiple times if they are not consecutive.

# Test Cases:
  # crunch('ddaaiillyy ddoouubbllee') == 'daily double'
  # crunch('4444abcabccba') == '4abcabcba'
  # crunch('ggggggggggggggg') == 'g'
  # crunch('a') == 'a'
  # crunch('') == ''

# Data structure:
  # It seems likely that we will need to iterate through the characters in the string in order to remove the
  # unwanted letters, so an array could work well for this situation.

# Algorithm:
  # First will need to convert the string argument to an array of characters
  # Then we will iterate through the characters and select characters only if they are different that the last iteration
  # character.
  # Then convert this newly selected array of characters back to string.
  # Lastly we will output the string.

def crunch(string)
  index = 0
  str_text = ''
  while index <= string.length - 1
    str_text << string[index] unless string[index] == string[index + 1]
    index += 1
  end
  str_text
end

# Below is the refactored version using string #each_char.

# def crunch(string)
#   str_text = ''
#   string.each_char do |n|
#     str_text << n unless str_text.chars.last == n
#   end
#   str_text
# end


p crunch('ddaaiillyy ddoouubbllee')

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''

# I was on the right track with this one but unabl to solve on my own.
# I was approaching it in an opposite fashion with a str_text << string[index] if string[index] != string[index -1]
# Not sure why I didn't think about [index + 1] and using a while loop.
