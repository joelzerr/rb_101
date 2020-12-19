numbers = (1..99).to_a

numbers.select { |num| puts num if num.even? }

#LS Solution below

# value = 1
#
# while value <= 99
#   puts value if value.even?
#   value += 1
# end
