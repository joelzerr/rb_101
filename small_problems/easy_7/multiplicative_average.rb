# Write a method that takes an Array of integers as input, multiplies all the numbers together,
# divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places.

# Input:
  # - array of integers

# Output:
  # - A float rounded to 3 decimal places.

# Explicit Requirements:
  # - method must take an array of integers.
  # - Must multiply all integers together
  # - must divide product of all integers by the number of integers in the array.
  # must return the result rounded to 3 decimal places.

# Implicit Requirements:
  # - Assume the input array is non-empty
  # - Input array will have at least one integer.

# Test Cases:
  # show_multiplicative_average([3, 5])                # => The result is 7.500
  # show_multiplicative_average([6])                   # => The result is 6.000
  # show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

# Data Structure:
  # - working with a array but will need result to output to a float.

# Algorithm:
  # - define the show_multiplicative_average method with one array as a parameter.
  # - initialize product variable to store the current product and set it equal to 1.
  # - interate through the array and reassign the product variable to the current element * product.
  # - after iterating through the collection initialize the result variable to equal product / input array length.
  # - lastly return the result variable as a float rounded to 3 decimal places.

def show_multiplicative_average(array)
  product = 1
  array.each do |n|
    product *= n
  end
  result = (product.to_f / array.size).round(3)
  puts "The result is #{format('%.3f', result)}"
end

# So the kernal#format elluded me once again.  However once I saw the hint to use it I was able to figure out how to
# get the trailing zeros.
# The LS solution below took a very similar approach. One thing to note is that they also initialized product to integers
# 1 but then called #to_f on it immediately where as I did this when I initialized result.
# The further exploration asked what happens if we omit the #to_f, and what happens is that it rounds the answers to the
# nearest whole number and includes 3 trailing zeros after the decimal.  They outputs look like this:
  # 7.000
  # 6.000
  # 28361.000


# def show_multiplicative_average(numbers)
#   product = 1.to_f
#   numbers.each { |number| product *= number }
#   average = product / numbers.size
#   puts "The result is #{format('%.3f', average)}"
# end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667
