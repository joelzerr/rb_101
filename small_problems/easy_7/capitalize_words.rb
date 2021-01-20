# Write a method that takes a single String argument and returns a new string that contains the original value
# of the argument with the first character of every word capitalized and all other letters lowercase.

# Input:
  # - String

# Output:
  # - String with the first character of each word capitalized and all other characters lowercase.

# Explicit Requirements:
  # - Method must take a single string as an argument.
  # - Must return a string with first letter in each word uppercase and all others lowercase.

# Implicit Requirements:
  # - Words are any sequence of non-blank characters.
  # - input string can be one or more words in length.
  # - If a word is in quotes the first letter will not be capitalized.

# Test Cases:
  # word_cap('four score and seven') == 'Four Score And Seven'
  # word_cap('the javaScript language') == 'The Javascript Language'
  # word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

# Data Structure:
  # Our input and output are strings
  # We may need to split the string into an array in order to work with it easier.

# Algorithm:
  # - first we will define our word_cap method to take a single string as an argument.
  # - next we will split the individual words of the string into an array.
  # - then we will iterate through the array of strings and capitalize the first letter of each word.
  # - after we've iterated through our collection, we will join the words back into a string.
  # - lastly we will return the string with the changes that have been made.

def word_cap(string)
  (string.split.each {|word| word.capitalize!}).join(' ')
end

# Below is the further exploration which asked to solve this challenge 2 other way without using String#capitalize.


# def word_cap(string)
#   arr = string.split.each {|word| word.downcase!}
#   (arr.each {|word| word[0] = word[0].upcase}).join(' ')
# end

# def word_cap(string)
#   arr = string.split.map {|word| word.downcase}
#   counter = 0
#   loop do
#     arr[counter][0] = arr[counter][0].upcase
#     counter += 1
#     break if counter == arr.size
#   end
#   arr.join(' ')
# end

# Below is the LS solution which is close to the same approach I used.

# def word_cap(words)
#   words_array = words.split.map do |word|
#     word.capitalize
#   end
#   words_array.join(' ')
# end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
