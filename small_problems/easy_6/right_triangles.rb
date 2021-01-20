# Write a method that takes a positive integer (n) as an argument, and displays a right triangle whose sides each have
# n stars.  The Hypotenuse should have one end at the lower left and the other end at the upper right.

# Input:
  # - An integer.

# Ouput:
  # - '*' strings printed in the shape of a triangle.

# Explicit Requirements:
  # - Method must take a positive integer.
  # - Must make a right triangle, whose sides each have stars equal to the argument integer.
  # - Hypotenuse should have a corner on the lower left and upper right.

# Implicit Requirements:
  # - The integer passed in as an arugment should be atleast 2.

# Test Cases:
# Triangle(5)
#     *
#    **
#   ***
#  ****
# *****

# Triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********

# Data Structure:
  # - Since we will need to print the '*' character the screen we will be working with strings.

# Algorithm:
  # - First we will initialize a counter = 1.
  # - Then we will enter a simple loop
  # - our break condition will be set to break if counter > argument integer n.
  # - Then we will set each iteration to puts ' ' * (n - counter) + '*' * counter
  # - Then we will increment counter by one.

def triangle(n)
  counter = 1
  loop do
    break if counter > n
    puts ' ' * (n - counter) + '*' * counter
    counter += 1
  end
end

# This second one is how I refactored for the further exploration and prints the triangle upside down.

# def triangle(n)
#   counter = n
#   loop do
#     break if counter < 1
#     puts '*' * counter + (' ' * (n - counter))
#     counter -= 1
#   end
# end

# Below is the LS solution which is uses the varialbles spaces and stars.

# # def triangle(num)
#   spaces = num - 1
#   stars = 1
#
#   num.times do |n|
#     puts (' ' * spaces) + ('*' * stars)
#     spaces -= 1
#     stars += 1
#   end
# end

triangle(5)
triangle(9)
triangle(20)
