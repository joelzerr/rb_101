#Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

#Words consist of any string of characters that do not include a space.

#input:
  # - string with one or more separated words.
#output:
  # - hash with keys representing the length of characters and a value representing how many words of that length.

#explicit requirements:
  # - words consist of any string of characters not including a space.
  # - must return a hash
  # - hash key needs to be the length of the word
  # - hash value needs to be how many words at the given length

#implicit requirements:
  # - any sort of non-alphabetic characters are counted as part of the word length with exception of space.
  # - the returned hash will contain integers for both the keys and values.

#Mental Model:
  # This challenge requires us to count each the number of characters in each word of the given string.
  # The length of each word should be saved as a hash key.
  # The value of each key should be the number a word of that length appears in the string.
  # The output should be a hash with the number of words of each length.

#Test Cases:
  #word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
  #word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
  #word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
  #word_sizes('') == {}

# Data Structure:
  #I need to convert the string to a hash.

#Algorithm:
  # I could convert the string to an array first to separate out the individual words.
  # Then I need to initialize an empty hash to store the word counts.
  # I should use a block to assign both the key and the values.
  # The key will represent the length of characters in the word and the value will represent how many words of that length in the string.

def word_sizes(string)
  word_count = Hash.new(0)
  string.split do |word|
    word_count[word.size] += 1
  end
  word_count
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# I was unable to solve this on my own.  I had to look at the solution.
# I was unaware that we could initialize a hash with the above format.
# I am still unsure why this works as opposed to word_count = {}
# I am also unsure as to how this code establishes the correct values by incrementing word_count[word.size]
