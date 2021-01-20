# Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and an adjective
# and injects those into a story that you create.

# Input:
  # users choice of a noun, verb, adverb and adjective. Input as stings.

# Output:
    # Concatenated string that uses the users input.

# Explicit Requirements:
  # User should be prompted to enter noun, verb, adverb, adjective.
  # program should output the madlib string that uses the users input.

# Implicit Requirements:
  # can place user input into any story that I create.
  # It doesn't have to make sense.

# Test Cases:
  # Enter a noun: dog
  # Enter a verb: walk
  # Enter an adjective: blue
  # Enter an adverb: quickly
  #
  # Do you walk your blue dog quickly? That's hilarious!

# Data Structure:
  # asks for user input which is saved as strings and output is a string, so we are working with strings.

# Algorithm
  # prompt user to enter a noun, save user input as variable noun.
  # prompt user to enter verb, save user input as variable verb.
  # prompt user to enter adverb, save user input as variable adverb.
  # prompt user to enter adjective, save user input as variable adjective.
  # Output our story string with the user input concatenated.

puts 'Enter a noun:'
noun = gets.chomp

puts 'Enter a verb:'
verb = gets.chomp

puts 'Enter an adjective:'
adjective = gets.chomp

puts 'Enter an adverb:'
adverb = gets.chomp

puts "Do you #{verb} your #{adjective} #{noun} #{adverb}. That's hilarious!"
puts "The #{adjective} #{noun} #{verb}s #{adverb} over the lazy dog."
