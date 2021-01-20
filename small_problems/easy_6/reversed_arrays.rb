# Write a method that takes an array an as argument and reverses its elements in place.
# So you should mutate the array that is passed in.
# Return value should be the same array object.

# Input:
  # - Array of elements.

# Output:
  # - The same array object but with the elements in reverse order.

# Explicit Requirements:
  # - Method should take an array of elements as an argument.
  # - That array object passed in should be mutated.
  # - Method should return the array of elements in reverse order.
  # - Return value of the method should be the same array object with the same object id.
  # - Use of Array#reverse or Array#reverse! is forbidden.

# Implicit Requirements:
  # - The method can take an empty array, or an array with one or more elements.
  # - An array must contain atleast 2 elements in order to have a reversed order.

# Test Cases:
  # list = [1,2,3,4]
  # result = reverse!(list)
  # result == [4, 3, 2, 1] # true
  # list == [4, 3, 2, 1] # true
  # list.object_id == result.object_id # true

  # list = %w(a b e d c)
  # reverse!(list) == ["c", "d", "e", "b", "a"] # true
  # list == ["c", "d", "e", "b", "a"] # true

  # list = ['abc']
  # reverse!(list) == ["abc"] # true
  # list == ["abc"] # true

  # list = []
  # reverse!(list) == [] # true
  # list == [] # true

# Data Structure:
  # I am working with an array as my input and output.
  # So choosing the data structure is straight forward.

# Algorithm:
  # - I will define my method and initially set it to take an array as a parameter.
  # - Next we will initiate an reversed_list array as an empty array.
  # - We will need to iterate through each element in the list_array that is passed in.
  # - Each iteration will remove the last element in the array and save into the reversed_list array.
  # - after the last iteration is complete we will have the reverse_list array with the elements in reverse order.
  # - and we will have the list_array as an empty array.
  # - Now we will iterate through the reversed_list array and save each element back into the list_array
  # - Lastly we will return the value of the mutated array from the method.


def reverse!(array)
  reversed_list = []
  counter = 0
  if array.size == 0
    array
  else
    loop do
      reversed_list << array.pop
      break if counter == array.size
    end
    loop do
      array << reversed_list.shift
      break if counter == reversed_list.size
    end
  end
  array
end

a = [1, 2, 3, 4]
p reverse!(a)

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = []
p reverse!(list) == [] # true
p list == [] # true

# So originally this method didn't work for empty arrays.
# I was able to refactor it to account for this test case it now works.
# Below is the LS solution.  I really like the approach of switching the indices.


# def reverse!(array)
#   left_index = 0
#   right_index = -1
#
#   while left_index < array.size / 2
#     array[left_index], array[right_index] = array[right_index], array[left_index]
#     left_index += 1
#     right_index -= 1
#   end
#
#   array
# end
#
# a = [1, 2, 3, 4]
# p reverse!(a)
#
# list = %w(a b e d c)
# p reverse!(list) == ["c", "d", "e", "b", "a"] # true
# p list == ["c", "d", "e", "b", "a"] # true
#
# list = [1,2,3,4]
# result = reverse!(list)
# p result == [4, 3, 2, 1] # true
# p list == [4, 3, 2, 1] # true
# p list.object_id == result.object_id # true
#
# list = []
# p reverse!(list) == [] # true
# p list == [] # true
