# Write  method that takes an array as an argument and splits the array into two halves and returns an array
# with the two halves as nested arrays.

# Input:
  # - an array

# Output:
  # - an array of nested arrays.

# Explicit Requirements:
  # - Method should split the argument array into two halves.
  # - The return array should contain the first half and then the second half as nested arrays.
  # - If orginal array has odd number of elements, middle element should be placed in first half.

# Implicit Requirements:
  # - If the array passed in is a single element array, it should still return 2 halves.
  # - If the array passed in contains only a empty array, it should still return 2 halves.

# Test Cases:
  # halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
  # halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
  # halvsies([5]) == [[5], []]
  # halvsies([]) == [[], []]

# Data Structure:
  # - We are working with arrays for this coding challenge.

# Algorithm:
  # - First we will intialize an array to store the first half.
  # - Next we will use a conditional to determine if the array size is evenly divisble by 2.
  #   -  If it is divisible by 2 we will use array.size/2 to determine how many times to pull the first element from array.
  #   - We will call shift this many times on the array and then << into the storeage array.
  #   - Then we will initialize halves array as an empty array.
  #   - Next we will push in the storage array elements and then the second half of the original array.
  #   - Lastly we will return the halves array.
  # - If the argument array is not evenly divisible by 2 will we will need to deal with the middle number.
  #   - we will call (array.size - 1)/2 to determine how many times to initially pull the first element from argument array.
  #   - We will call shift this many times + 1 and then << into storage array.
  #   - Then we will initialize halves storage array as an empty array.
  #   - Next we will push in the storage array elements and then the second half of the oringinal array.
  #   - Lastly we will return the halves array.

def halvsies(array)
  first_half = []
  both_halves = []

  if array.size == 1 || array.size == 0
    both_halves << array
    both_halves << first_half
  elsif array.size / 2 == 0
    ((array.size) / 2).times do
      first_half << array.shift
    end
      both_halves << first_half
      both_halves << array
  else
    (((array.size - 1) / 2) + 1).times do
      first_half << array.shift
    end
      both_halves << first_half
      both_halves << array
  end
  both_halves
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

# Below is the LS solution.  It includes a few coding methods I've never seen before.


# def halvsies(array)
#   middle = (array.size / 2.0).ceil
#   first_half = array.slice(0, middle)
#   second_half = array.slice(middle, array.size - middle)
#   [first_half, second_half]
# end
