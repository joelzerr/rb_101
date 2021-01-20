# Write a method that returns a list of all substrings of a string. The returned list should be ordered
# by where in the string the substring begins.

# Input:
  # single word string

# Output:
  # array of substrings

# Explicit Requirements:
  # method should be defined to take a single string as a parameter
  # returned array should include a list of all substrings
  # substrings should be ordered by where in the string the substring begins
    # all substrings that start with index 0 should come first, then all that start at index 1 and so on.
  # substrings starting at a given index should be ordered from shortest to longest.

# Implicit Requirements:
  # input string will be a single word.
  # input string will not be empty and should be atleast one character long.

# Test Cases:
  # substrings('abcde') == [
  # 'a', 'ab', 'abc', 'abcd', 'abcde',
  # 'b', 'bc', 'bcd', 'bcde',
  # 'c', 'cd', 'cde',
  # 'd', 'de',
  # 'e'
  # ]

# Data Structure:
  # input is a string but we will need to convert to an array of characters in order to iterate through the letters.

# Algoritm:
  # first we will use the leading_substrings method from last exercise and refactor.
  # we will initialize another variable outside the loop called counter = 0
  # then we will create a loop outside the #upto method and the block.
  # count will be used to change the start of our substring.
  # we will loop through and increment the count variable in the outer loop.



  def substrings(string)
    result = []
    count = 0
    loop do
      count.upto(string.size - 1) do |index|
        result << string[count..index]
      end
      count += 1
      break if count > string.size
    end
    result
  end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
