# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of every pair of numbers that can be formed between
# the elements of the two Arrays.

# Input:
  # - 2 separate arrays of numbers.

# Output:
  # - an array

# Explicit Requirements:
  # - Method must be defined to take 2 parameters.
  # - Input arrays can be any length but must not be empty.
  # - returned array must contain the product of every pair that can be made from the input arrays.
  # - the returned arrays elements must be sorted by increasing value.

# Implicit Requirements:
  # - Assume that neither input array will be empty.
  # - Input arrays can be of any length.

# Test Cases:
  # multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

# Data Structure:
  # - Inputs are arrays and so is output so we will stick with array as our data structure.

# Algorithm:
  # - define multiply_all_pairs method to take 2 parameters.
  # - initialize result_arr as an empty array to hold he product of our pairs.
  # - iterate over our arr1
  # _ iterate over arr2  and push the product of current element with  each arr2[index] into result_arr.
  # - return the value of result_arr sorted by increasing value.

def multiply_all_pairs(arr1 , arr2)
  result_arr = []
  arr1.each do |n|
    arr2.each do |x|
      result_arr << x * n
    end
  end
  result_arr.sort
end

# I felt really great about solving this one so quickly, especially because my solution ended being almost identical to
# the LS solution below.

# def multiply_all_pairs(array_1, array_2)
#   products = []
#   array_1.each do |item_1|
#     array_2.each do |item_2|
#       products << item_1 * item_2
#     end
#   end
#   products.sort
# end


p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
