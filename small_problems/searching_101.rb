numbers = []

puts 'Enter the 1st number:'
answer1 = gets.chomp.to_i

numbers << answer1

puts 'Enter the 2nd number:'
answer2 = gets.chomp.to_i

numbers << answer2

puts 'Enter the 3rd number:'
answer3 = gets.chomp.to_i

numbers << answer3

puts 'Enter the 4th number:'
answer4 = gets.chomp.to_i

numbers << answer4

puts 'Enter the 5th number:'
answer5 = gets.chomp.to_i

numbers << answer5

puts 'Enter the 6th number:'
answer6 = gets.chomp.to_i

if numbers.include?(answer6)
  puts "The number #{answer6} appears in #{numbers}."
else
  puts "The number #{answer6} does not appear in #{numbers}."
end
