# Given a string that consists of some words and an assortment of non-alphabetic characters,
# write a method that returns a string with all non-alphabetic characters replaced by spaces.

  #input:
    # - string of words and non-alphabetic characters.

  #output:
    # - returned string with all non-alphabetic strings replaced by spaces.

  #explicit requirements:
    # - all non-alphabetic characters need to be removed from the string.
    # - if one of more non-alphabetic characters occur in a row, they should be replaced with only one space.
    # - the result should never have consecutive spaces.

  #implicit requirements:
    # - non-alphabetic characters include anything that isn't a lowercase letter or a single space.

  #Mental model:
    # - This problem requires that we compare each character in the string to all lowercase letters in the alphabet.
    # - If a character isn't one of those letters if should be replaced by a space.
    # - There should never be consecutive spaces, even there are consecutive non-alphabetic characters.
    # - They should be removed but only to be replaced by a single space.

  #Test Cases:
    # - cleanup("---what's my +*& line?") == ' what s my line '

  #Data Structure:
    # array could be useful since we need to iterate through each character and select only alphabetic characters.
    # an array of lowercase alphabet could give us a way to compare the letters in our string.

  #Algorithm:
    # The given string should be converted to an array, possibly using the #split method.
    # Then we can iterate over each word, converting each word to an array of characters.
    # Then iterate through using map on each character and replace each '-' with a ' '
    # and then delete any consecutive spaces.
    # Then use this return value one level up and use #join to convert back to a string.

ALPHABET = ('a'..'z').to_a

# def cleanup(string)
#   arr = string.split(' ')
#   arr.map do |word|
#     word.chars.map do |letter|
#       if ALPHABET.include?(letter)
#         letter
#       else
#         letter.delete
#       end
#     end
#   end
#   p arr.join(' ')
# end

# So I was definitely on the right track with my above solution.  I was just over thinking it a bit.

def cleanup(string)
  saved_chars = []

  string.chars.each do |char|
    if ALPHABET.include?(char)
      saved_chars << char
    else
      saved_chars << ' ' unless saved_chars.last == ' '
    end
  end
  saved_chars.join
end

p cleanup("---what's my +*& line?")
