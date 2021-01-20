# Write a method that combines 2 arrays passed in as arguments , and returns a new array that contains
# all elements from both array arguments, with the elements taken in alteration.

# Input: 2 arrays
# Output: 1 array containing all elements from input arrays with elements alternated.

# Explicit Requirements:
  # - Method must take 2 arrays as arguments.
  # - Methd must return 1 array with all elements of argument arrays.
  # - Returned array must have elements from arguments altern alternated.
  # - Both input arrays will be non-empty
  # - Both input arrays will have the same number of elements.

# Implicit Requirements:
  # - Length of returned array will be sum of 2 input arrays.
  # - Objects used in the inputs arrays are irrelevant.

# Test Cases:
  # interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

# Data Structure:
 # - Since the input and output are both arrays, it is likely we will stick to working with arrays as our
 # data structure.

# Algorithm:
  # - start by assigning 'combined_arr' to an empty array.
  # - then we will assign 'counter' equal to 0.
  # - we will then use a loop to iterate through each input array.
  # - for each iteration we will add index 0 of each array represented by our counter to 'combined_arr'
  # - then we will increment 'counter' by 1.
  # - then break if counter is equal to one of the input arrays length.
  # - after we've iterated through the collections we will return 'combined-arr'.

# def interleave(arr1, arr2)
#   combined_arr = []
#   counter = 0
#   loop do
#     combined_arr << arr1[counter]
#     combined_arr << arr2[counter]
#     counter += 1
#     break if counter == arr1.size
#   end
#   combined_arr
# end


def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

p interleave(['j', 'o', 'e', 'l'], [1, 2, 3, 4])

# The first method was the code I wrote for my initial solution.  The second was from the further exploration.

# Below is the LS solution which was an interesting way to solve this. I was unaware that ruby would allow pushing
# 2 elements in a row like this into a different collection.

# def interleave(array1, array2)
#   result = []
#   array1.each_with_index do |element, index|
#     result << element << array2[index]
#   end
#   result
# end
