
puts 'Enter the first number:'
first = gets.chomp.to_f

puts 'Enter the second number:'
second = gets.chomp.to_f

addition = first + second
subtraction = first - second
product = first * second
quotient = first / second
remainder = first % second
power = first ** second

puts "#{first} + #{second} = #{addition}"
puts "#{first} - #{second} = #{subtraction}"
puts "#{first} * #{second} = #{product}"
puts "#{first} / #{second} = #{quotient}"
puts "#{first} % #{second} = #{remainder}"
puts "#{first} ** #{second} = #{power}"
