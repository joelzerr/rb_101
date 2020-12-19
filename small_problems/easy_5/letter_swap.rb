# Given a string of words separated by spaces, write a method that swaps the first and last letter of each word.
  # - iterate through the words in the string one by one.
  # - on each iteration take the first letter and switch it with the last letter.
  # - after we have finished iterating through each word, print the string with the rearranged words.

  #input :
    # String of words separated by spaces.

  #output:
    # The same string with the rearranged words.

  #explicit requirements:
    # - every word contains at least one letter.
    # - string will always contain at least one word.
    # - each string contains nothing but words and spaces.

  #implicit requirements:
    # - format of the string is the exact same with exception of the swapped letters.
    # - the string with rearranged letters is returned from the method.

    #test cases:
    # - swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
    # - swap('Abcde') == 'ebcdA'
    # - swap('a') == 'a'

    #data structure:
      # - array could be useful since we need to iterate through each word.
      # - array could also allow me to reference the letters be swapped using index.

    #algorithm:
      # - convert string into an array where each word is an element.
      # - iterate over each element.
      # - save the letter representing index 0 and index -1.
      # - reassign the letter represented by index 0 to the letter representing index -1.
      # - reassign the letter represented by index -1 to the letter representing index 0.
      # - after we have iterated through and reassigned the letters convert array back to string.

# def swap(string)
#   arr = string.split(' ')
#   arr.map do |word|
#     first = word[0]
#     last = word[-1]
#     word[0] << last
#     word[-1] << first
#   end
# end

# So my oringinal approach above wasn't working but the output I was getting made it seem close.
# I decided to try using a basic loop instead, rather than continuing to hunt for the right method.
# My code below works!


def swap(string)
  arr = string.split(' ')
  new_arr = []
  counter = 0
  loop do
    break if counter == arr.length
    current_word = arr[counter]
    first_letter = current_word[0]
    last_letter = current_word[-1]
    current_word[0] = last_letter
    current_word[-1] = first_letter
    new_arr << current_word
    counter += 1
  end
  p new_arr.join(' ')
end




swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Below is the LS solution which is obviously much more effecient.
# The swap_first_last_characters method uses a, b = b, a approach which I honestly wasn't aware could be done.
# I really like this because this was along the same lines of what I was trying to do in my initial attempts.


# def swap_first_last_characters(word)
#   word[0], word[-1] = word[-1], word[0]
#   word
# end
#
# def swap(words)
#   result = words.split.map do |word|
#     swap_first_last_characters(word)
#   end
#   result.join(' ')
# end
