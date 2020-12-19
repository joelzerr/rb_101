# Write a method that takes an Array of Integers between 0 and 19,
# and returns an Array of those Integers sorted based on the English words for each number:

# zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen,
# fourteen, fifteen, sixteen, seventeen, eighteen, nineteen

# Input:
  # an array of integers ranging from 0 to 19.

# Output:
  # an array of integers ordered based on enlish word for the number.

# Explicit requirements:
  # - method must take an array of integers
  # - array of integers must be a range of 0 - 19
  # - integers should be sorted based on english word representing integer.

# Implicit requirements:
  # - No other integers besides 0-19 should be used.

# Mental Model:
  # - This challenge wants us to put the integers 0 - 19 in the order that represents the sorted english word for the integer.
  # - So we are basically sorting the words zero - nineteen and then putting the integers in that order.
  # - The output will an array with the sorted integers.

# Test Cases:
  # alphabetic_number_sort((0..19).to_a) == [
  # 8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  # 6, 16, 10, 13, 3, 12, 2, 0
  # ]

# Data Structure:
  # Since we have an integer and a word that represents that integer it makes sense to use a hash.
  # A hash will allow us to access the word values for each integer so that we can sort them.

# Algorithm:
  # First I will def a method that can take the array of integers ranging from 0-19
  # Then I will assign an array with the words zero - nineteen
  # I can then use the array #zip method to join the two arrays together which outputs an array of array based on index.
  # Then I can convert to a hash and sort by the values and call the #keys method
  # This should output the keys in an array that is sorted based off the values.



def alphabetic_number_sort(array)
  numbers =  array

  num_words = [ 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten',
    'eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

  num_hash = numbers.zip(num_words).to_h

  sorted_hash = num_hash.sort_by {|key, val| val }
  sorted_hash.to_h.keys
end

# I was able to solve this challenge all on my own.
# zip was key to my code working.

# Below is the LS solution which is super clean.

# The thing I like about is it only uses one method, sort_by and it makes it very readable.

# # NUMBER_WORDS = %w(zero one two three four
#                   five six seven eight nine
#                   ten eleven twelve thirteen fourteen
#                   fifteen sixteen seventeen eighteen nineteen)
#
# def alphabetic_number_sort(numbers)
#   numbers.sort_by { |number| NUMBER_WORDS[number] }
# end


p alphabetic_number_sort((0..19).to_a)

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]
