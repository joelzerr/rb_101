# This challenge I need to write a method that takes an array of strings and
# returns the same array of strings, except with the vowels (aeiou) removed.

# Input:
  # - an array of strings

# Output:
  # - an array of strings

# Explicit Requirements:
  # - The output should be the same array of strings, but with all vowels removed.
  # - The output should not contain the letters a, e, i, o, or u.

# Implicit Requirements:
  # - The vowels that are to be removed are not case sensitive.
  # - If a string only contains vowels, the output should be an empty string for that element.
  # - The array will contain at least one string element.

# Test Cases:
  # remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
  # remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
  # remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# Data Structure:
  # This one is straight forward since both the input and output are arrays.
  # So It seems that working with an array is most appropriate here.

# Mental Model:
  # I will first establish a constant with both upper and lower case vowels in an array.
  # I will then want to iterate through each string in the array.
  # Each string should be compared to the vowels constant to see if it includes any of those letters.
  # If the string element contains any vowels they should be deleted.
  # The modifed string element should be stored back in the array.
  # This should be done on each iteration of the string argument.

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(arr)
  arr.map do |word|
    word.chars.delete_if { |n| VOWELS.include?(n) }.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

# This one took me about 50 min to solve on my own.
# I mostly tested things in irb for a while.
# The main problem I had to isolate and solve first was taking a single string
# converting it a an array of characters and iterating through each character if it was included in the Vowels constant.
# After I solved that piece the rest of the code went quick.

# Below is the LS solution which is similar but a little more simple.

# def remove_vowels(strings)
#   strings.map { |string| string.delete('aeiouAEIOU') }
# end
