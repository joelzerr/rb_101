# Write a method that takes two arrays as arguments.
# And returns an array that contains all the elements from both arrays passed in as arguments with no duplicates.

# Input:
  # - 2 separate arrays.

# Output:
  # - 1 array with combined elements.

# Explicit Requirements:
 # - Method must take 2 arrays as arguments.
 # - It must return one single array.
 # - Output array should contain combined elements from each argument array.
 # - Output array should contain no duplicates even if one of the argument arrays contained duplicates.

# Implicit Requirements:
  # - The arrays passed in will contain at least 1 or more elements.

# Test Cases:
 # merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
 # merge([1],[2]) == [1, 2]
 # merge([1,1], [2,2]) == [1, 2]

# Data Structure:
  # This straight forward on this one.  We are going to be working with arrays.

# Algorithm:
  # - We will start by initializing a new array that will combine or merge the 2 arrays passed in.
  # - We will then call the array#uniq! method on the new array.
  # - Lastly we will output the  new array.

def merge(array1, array2)
  array3 = array1 + array2
  array3.uniq!
  array3
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
p merge([1],[2]) == [1, 2]
p merge([1,1], [2,2]) == [1, 2]

# The LS solution below uses the method array#| this is the set union method and this method returns a new array by joining
# two arrays together, excluding any duplicates.

# def merge(array_1, array_2)
#   array_1 | array_2
# end
