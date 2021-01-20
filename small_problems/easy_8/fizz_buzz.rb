#Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
# Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz",
#if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

# Input:
  # 2 integers

# Output:
  # numbers between the 2 input numbers as well as the words fizz, buzz, and fizzbuzz.

# Explicit Requirements:
  # method must be defined to take 2 numbers as arguments.
  # first number is starting point and second number is the ending point.
  # print out all numbers between the argument numbers
  # if number divisble by 3 print "Fizz" instead of number
  # if number divisble by 5 print "Buzz" instead of number
  # if number divisble by 3 and 5 print "FizzBuzz" instead of number.

# Implicit Requirements:
  # should print the 2 numbers passed in as well as range between.
  # our output could may include both integers as well as strings.

# Test Cases:
  # fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

# Data Structure:
  # would make sense to convert the range of numbers to an array in order to iterate through.

# Algorithm:
  # first define fizzbuzz method to take two numbers as arguments.
  # initialize result variable as an empty array.
  # convert the range of numbers to an array of all numbers.
  # iterate through the array of numbers
  # if num / 3 == 0 puts 'Fizz'
  # elsif num / 5 == 0 puts 'Buzz'
  # elsif num / 3 && num / 5 == 0 puts 'FizzBuzz'
  # else puts num
  # end conditional

def fizzbuzz(num1 , num2)
  result = []
  arr = (num1..num2).to_a
  arr.each do |n|
    if n % 3 == 0 && n % 5 == 0
      result << 'FizzBuzz'
    elsif n % 3 == 0
      result << 'Fizz'
    elsif n % 5 == 0
      result << 'Buzz'
    else
      result << n
    end
  end
  puts result.join(', ')
end

# Okay so some things to note about the LS solution below.
# They used 2 separate methods for this challenge.
# This seems like it works well but I don't really see the advantage of this.  However it is interesting to use a
# case statement in this way.  They also used #upto again which I think I should start getting more comfortable with.

# def fizzbuzz(starting_number, ending_number)
#   result = []
#   starting_number.upto(ending_number) do |number|
#     result << fizzbuzz_value(number)
#   end
#   puts result.join(', ')
# end
#
# def fizzbuzz_value(number)
#   case
#   when number % 3 == 0 && number % 5 == 0
#     'FizzBuzz'
#   when number % 5 == 0
#     'Buzz'
#   when number % 3 == 0
#     'Fizz'
#   else
#     number
#   end
# end

fizzbuzz(1, 15)
