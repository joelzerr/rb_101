# Write a method that takes a String as an argument, and returns a new String that contains the original value
# using a staggered capitalization scheme in which every other character is capitalized,
# and the remaining characters are lowercase.

# Input:
  # - String

# Output:
  # - Same string but with every other letter capitalized.

# Explicit Requirements:
  # - Method must take one string as an argument.
  # - Must return a new string but with original value, and with alternating capital letters.
  # - Characters that are not letters should not be changed.
  # - non-letters count as characters when switching between upper and lowercase letters.

# Implicit Requirements:
  # - Input string can be one or more words in length.

# Test Cases:
  # staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
  # staggered_case('ALL_CAPS') == 'AlL_CaPs'
  # staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

# Data Structure:
  # - We are working with a string as our input, but could use an array to iterate through the characters.

# Algorithm:
  # - first we will define the staggered_case method to take one string as a parameter.
  # - then we will assign string_arr to the return value of the string split into individual characters within an array.
  # - then we will iterate throught the characters in the array.
  # - if index is equal to 0 or is odd then character is upcased.
  # - Then we will convert the new array back to a string and returnt the string.

def staggered_case(string)
  string_arr = string.chars
  string_arr.each_with_index do |char, index|
      if index == 0
        char.upcase!
      elsif index.even?
        char.upcase!
      else
        char.downcase!
      end
    end
  string_arr.join
end

# The LS solution uses a saavy method for building a new string based on the whether need_upper = true or false.
# need_upper gets toggled back and forth from true to false on each iteration so that the appropriate character will
# be capitalized.

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if need_upper
#       result += char.upcase
#     else
#       result += char.downcase
#     end
#     need_upper = !need_upper
#   end
#   result
# end



p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'
