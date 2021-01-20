# Write a method named include? that takes an array and a search value as arguments.
# The method should return true if the search value is in the array, and false if it is not.

# Input:
  # - An array and a value

# Ouput:
  # - A boolean, either true or false.

# Explicit Requirements:
  # - Method should check if the search value is included.
  # - Must return true or false.
  # - Use of array#include? is prohibited.

# Implicit Requirements:
  # - Will always be given 2 arguments.

# Test Cases:
  # include?([1,2,3,4,5], 3) == true
  # include?([1,2,3,4,5], 6) == false
  # include?([], 3) == false
  # include?([nil], nil) == true
  # include?([], nil) == false

# Data Structure:
  # - We will be working with an array and checking this array for the search value.
  # - The output will be a boolean.

# Algorithm:
  # - We will first call the enumerable#any? method on our array within the method definition.
  # - Using enumerable#any? method we will pass each element of our collection to a block.
  # - Within the block we will check if the element is == the search value.
  # - This method will check each element in the collection and return true if any of the elements or == search value.
  # - Otherwise it wil return false.

def include?(array , search_val)
  array.any? { |n| n == search_val }
end


# Below if the LS solutions
# I'm still unclear as to why the !! forces the block to return a boolean instead of the returned index of the element.



# def include?(array, value)
#   !!array.find_index(value)
# end

# def include?(array, value)
#   array.each { |element| return true if value == element }
#   false
# end

p include?([1,2,3,4,5], 3) #== true
p include?([1,2,3,4,5], 6) #== false
p include?([], 3) #== false
p include?([nil], nil) #== true
p include?([], nil) #== false
