# Write a method that will take a short line of text, and print it within a box.

# Input:
  # a short line of string text.

#Output:
  # The same string text with a box around it.

#Explicit Requirements:
  # - Method should take a string
  # - Needs to output a box around the same string

#Implicit Requirements:
  # - String should be centered in the box.
  # - The box should only be 5 lines of code.
  # - output string should be displayed on line 3.
  # - +, - , |, should make up the box.

#Mental Model:
  # This challenge requires me to place a box around the given string.
  # The size of the string will dictate the width of the box.
  # Since, the string is only one line, the length will always only be 5 lines.

#Test Cases:
  # print_in_box('To boldly go where no one has gone before.')
  # +--------------------------------------------+
  # |                                            |
  # | To boldly go where no one has gone before. |
  # |                                            |
  # +--------------------------------------------+

  # print_in_box('')
  # +--+
  # |  |
  # |  |
  # |  |
  # +--+

  #Data Structure:
    # String concatenation seems like the likely approach to solving this challenge.

  #Algorithm:
    # We assign a horizontal line variable to equal 2 more characters than string size.
    # then use concatenation to insert a + on each corner.
    # Next assign the empty lines variable with | on each end.
    # We can do this by matching the size to the horizontal line size.
    # Then use concatenation to place the string on the 3rd, middle line.
    # Then call puts to each string in the appropriate order to make a box.

def print_in_box(string)
  horizontal_line = "+" + "-" * (string.size + 2) + "+"
  empty_line = "|" + " " * (string.size + 2) + "|"

  str_centered = "| #{string} |"

  puts horizontal_line
  puts empty_line
  puts str_centered
  puts empty_line
  puts horizontal_line
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')
