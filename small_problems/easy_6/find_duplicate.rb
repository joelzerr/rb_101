# Write a method that takes an unordered array that has one of the values duplicated,
# and returns that duplicated value.

# Input:
  # An array.

# Output:
  # An integer.

# Explicit Requirements:
  # - Must find the duplicate in the array.
  # - Only one number appears more than once.
  # - The return must be the number that appears more than once.

# Implicit Requirements:
  # - Argument array should contain at least two or more values.

# Test Cases:
  # find_dup([1, 5, 3, 1]) == 1
  # find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
  #       38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
  #       14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
  #       78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
  #       89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
  #       41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
  #       55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
  #       85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
  #       40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
  #       7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# Data Structure:
  # We will be working with an input array
  # However we will need to be able to output which ever element appears twice to an integer.

# Algorithm:
  # We will first initialize a duplicated element variable assigned to nil.
  # The we will iterate through the argrument array that has been passed into the find_dup method.
  # We will call the array#count method on each element of the array.
  # If the counted element is > 1, we will reassign that element to the duplicated element variable.
  # next we will return the duplicated element variable.

def find_dup(array)
  dup_element = nil
  array.each do |i|
    if array.count(i) > 1
      dup_element = i
    end
  end
  dup_element
end

p find_dup([1, 5, 3, 1]) == 1
p find_dup([18,  9, 36, 96, 31, 19, 54, 75, 42, 15,
      38, 25, 97, 92, 46, 69, 91, 59, 53, 27,
      14, 61, 90, 81,  8, 63, 95, 99, 30, 65,
      78, 76, 48, 16, 93, 77, 52, 49, 37, 29,
      89, 10, 84,  1, 47, 68, 12, 33, 86, 60,
      41, 44, 83, 35, 94, 73, 98,  3, 64, 82,
      55, 79, 80, 21, 39, 72, 13, 50,  6, 70,
      85, 87, 51, 17, 66, 20, 28, 26,  2, 22,
      40, 23, 71, 62, 73, 32, 43, 24,  4, 56,
      7,  34, 57, 74, 45, 11, 88, 67,  5, 58]) == 73

# The LS solution below uses array#find to check the count of the element == 2.

# def find_dup(array)
#   array.find { |element| array.count(element) == 2 }
# end
