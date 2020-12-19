# This one is just a modification from the first.
# Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size.

#input:
  # - string with one or more separated words.
#output:
  # - hash with keys representing the length of characters and a value representing how many words of that length.

  # The only difference is that we exclude all non-letters when determining word size.

#Test Cases:
  # - word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
  # - word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
  # - word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
  # - word_sizes('') == {}

# ALPHABET = ('a'..'z').to_a + ('A'..'Z').to_a
#
# def remove_nonletters(string)
#   saved_words = []
#   string.split.map do |word|
#     saved_letters = []
#     word.chars.select do |character|
#       if ALPHABET.include?(character)
#         saved_letters << character
#       else
#         next
#       end
#       saved_words << saved_letters.join
#     end
#   end
# end

  def word_sizes(string)
    word_count = Hash.new(0)
    string.split do |word|
      clean_word = word.delete('^A-Za-z')
      word_count[clean_word.size] += 1
    end
    word_count
  end

  word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
  word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
  word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
  word_sizes('') == {}

  # I felt confident about refactoring this program on my own.  But I was over complicating things.
  # I thought that I should make a new method that saved an array of clean words with no non-alphabetic characters.
  # I was thinking I could then call the next method with the array as an agrument instead of a string.
  # However I was unable to get it to run correctly.
  # Now that I understand how to use string #delete, this will be useful for similar challenges. 
