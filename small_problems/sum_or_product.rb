
  puts "please enter a number greater than 0"

  NUMBER = gets.chomp.to_i

  puts "Enter 's' to compute the sum, 'p' to compute the product"

  choice = gets.chomp.downcase

  RANGE = *(1..NUMBER)


def math(operation)
  if operation == 's'
    puts (1..NUMBER).sum
  else operation == 'p'
    RANGE.each { |n| puts n *= NUMBER }
  end
end

math(choice)

# In my solution above I changed all my variables to constants because I kept getting an undefined variable error.
# AND it didnt work correctly when calculating the product. 
#Below is the LS solution.

# def compute_sum(number)
#   # total = 0
#   # 1.upto(number) { |value| total += value }
#   # total
#   (1..number).inject(:+)
# end
#
# def compute_product(number)
#   # total = 1
#   # 1.upto(number) { |value| total *= value }
#   # total
#   (1..number).inject(1, :*)
# end
#
# puts "please enter a number greater than 0"
#
# number = gets.chomp.to_i
#
# puts "Enter 's' to compute the sum, 'p' to compute the product"
#
# operation = gets.chomp.downcase
#
# if operation ==  's'
#   sum = compute_sum(number)
#   puts "The sum of numbers between 1 and #{number} is #{sum}."
# else operation == 'p'
#   product = compute_product(number)
#   puts "The product of numbers between 1 and #{number} is #{product}."
# end
#
# # I have commented out the original method definitions above in order to do the further exploration.
# # I used the enumerable# inject instead.
