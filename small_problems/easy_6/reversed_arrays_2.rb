# Write a method that takas an array and returns a new array with the elements of the original list in reverse order.

# Input:
  # - An array of ordered elements.

# Output:
  # - An new array of the same elements in reverse order.

# Explicit Requirements:
 # - Method should take an array of elements as an argument.
 # - That array object passed in should not be mutated and a new array should be returned.
 # - Method should return the new array of elements in reverse order.
 # - Return value of the method should be a different array object with a different object id.
 # - Use of Array#reverse, Array#reverse! or the method you wrote in part 1 is forbidden.

 # Implicit Requirements:
  # - The method can take an empty array, or an array with one or more elements.
  # - An array must contain atleast 2 elements in order to have a reversed order.

# Test Cases:
# reverse([1,2,3,4]) == [4,3,2,1]          # => true
# reverse(%w(a b e d c)) == %w(c d e b a)  # => true
# reverse(['abc']) == ['abc']              # => true
# reverse([]) == []                        # => true

# list = [1, 3, 2]                      # => [1, 3, 2]
# new_list = reverse(list)              # => [2, 3, 1]
# list.object_id != new_list.object_id  # => true
# list == [1, 3, 2]                     # => true
# new_list == [2, 3, 1]                 # => true

# Data Structure:
  # I am working with an array as my input and output.
  # So choosing the data structure is straight forward.

# Algorithm:
 # - I will define my method and initially set it to take an array as a parameter.
 # - Next we will initiate a new_list array as an empty array.
 # - We will need to iterate through each element in the list array that is passed in.
 # - Each iteration will copy the last element in the list array and save into the new_list array.
 # - after the last iteration is complete we will have the new_list array with the elements in reverse order.
 # - and we will have the list array unmodified.
 # - Lastly we will return the value of the new_list array.

 def reverse(array)
   new_list = []
   counter = -1
   if array.size == 0
     array
   else
     loop do
       new_list << array[counter]
       break if (counter * -1) == array.size
       counter -= 1
     end
   end
   new_list
 end

 p reverse([1,2,3,4]) == [4,3,2,1]
 p reverse(%w(a b e d c)) == %w(c d e b a)
 p reverse(['abc']) == ['abc']
 p reverse([]) == []
 p reverse([5]) == [5]
 p list = [1, 3, 2]
 p new_list = reverse(list)
 p list.object_id != new_list.object_id
 p list == [1, 3, 2]
 p new_list == [2, 3, 1]

 # At first I was unable to make above code work for one of the test cases.
 # It kept returning false for the empty array that was being passed in.
 # I refactored to account for this and it now works.
 # Below I used an appraoch that combined a part of the LS solution from part 1.
 

 # def reverse(array)
 #   new_list = []
 #   array.each do |n|
 #     new_list << n
 #   end
 #
 #   left_index = 0
 #   right_index = -1
 #
 #   while left_index < new_list.size / 2
 #     new_list[left_index], new_list[right_index] = new_list[right_index], new_list[left_index]
 #     left_index += 1
 #     right_index -= 1
 #   end
 #   new_list
 # end
 #
 # p reverse([1,2,3,4]) == [4,3,2,1]
 # p reverse(%w(a b e d c)) == %w(c d e b a)
 # p reverse(['abc']) == ['abc']
 # p reverse([]) == []
 #
 # p list = [1, 3, 2]
 # p new_list = reverse(list)
 # p list.object_id != new_list.object_id
 # p list == [1, 3, 2]
 # p new_list == [2, 3, 1]

# The LS solution is below.  They used reverse_each which is great but it did state that we couldn't use reverse or
# reverse!, so I didn't even look to see if there was another method option.  I basically did the same thing by
# calling each on the array that is passed in, in order to irterate through and push the same elements into the
# new_list array.  Then I just repeated the same approach from part 1.

 # def reverse(array)
 #   result_array = []
 #   array.reverse_each { |element| result_array << element }
 #   result_array
 # end
