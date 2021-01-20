# Write a method that takes two Array arguments in which each Array contains a list of numbers,
# and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index.

# Input:
  # - 2 separate arrays that contain numbers.

# Output:
  # - A single array.

# Explicit Requirements:
  # - Method must take 2 arrays as arguments.
  # - Must return a single array.
  # - Elements in the returned array need to be the product of the numbers with same index from input arrays.

# Implicit Requirements:
  # - Input arrays will be same length.
  # - Input arrays will contain one or more elements.

# Test Cases:
  # multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

# Data Structure:
  # - Input and output are arrays so we will be sticking with array as out data structure.

# Algorithm:
  # - Define multiply_list method to take 2 arrays as parameters.
  # - initialize result_arr as an empty array
  # - initialize variable 'counter' to integer 0.
  # - enter a loop to iterate through both collections
  # - on each iteration push result of multiply array1[counter] with array2[counter] into result_arr
  # - increment counter by 1
  # - set break conditions to exit loop if counter is equal to the length of array1.
  # - return result_arr

def multiply_list(arr1 , arr2)
  result_arr = []
  counter = 0
  loop do
    result_arr << arr1[counter] * arr2[counter]
    counter += 1
    break if counter == arr1.size
  end
  result_arr
end

# I wasn't sure how to use a different approach besides a simple loop.  The LS solution shows the use of #each_with_index
# where the element of the first array is multiplied to the element represented by the index of the second array.
# I need to remember this type of appraoch as it seems very handy.

# def multiply_list(list_1, list_2)
#   products = []
#   list_1.each_with_index do |item, index|
#     products << item * list_2[index]
#   end
#   products
# end

# This was from the further exploration which asked to write a one liner using zip.
# I had to look this up be looking over other peoples solutions to this challenge.  Couldn't quite figure it out on my
# own.  Its was clear how #zip worked but I couldnt figure out what to do after calling #zip.
# It makes sense now because by just writing arr1.zip(arr2) we get => [[3, 9], [5, 10], [7, 11]]
# So once we call map on this return we are iterating over each nested array and calling #reduce on those elements within
# each nested array in the block.

# def multiply_list(arr1 , arr2)
#   arr1.zip(arr2).map { |n| n.reduce(:*) }
# end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
