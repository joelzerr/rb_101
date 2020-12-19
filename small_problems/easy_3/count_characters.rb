puts 'Please write a word or multiple words.'
answer = gets.chomp
answer_arr = answer.chars
new_arr = []
answer_arr.select do |char|
  if char != ' '
    new_arr << char
  end
end

number_of_characters = new_arr.size

puts "There are #{number_of_characters} characters in \"#{answer}\"."

#Below is the LS solution to this problem.  It is obviously cleaner and more efficient code.

# answer = gets.chomp
# number_of_characters = answer.delete(' ').size
#
# puts "There are #{number_of_characters} characters in \"#{answer}\"."
