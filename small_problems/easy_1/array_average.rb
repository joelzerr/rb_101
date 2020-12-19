def average(numbers)
  numbers.sum.to_f / numbers.count
end

puts average([ 1, 6, 9 ])

puts average([1, 5, 87, 45, 8, 8]) == 25.666666666666668
puts average([9, 47, 23, 95, 16, 52]) == 40.333333333333336
