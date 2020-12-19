
#
# puts "What is your name?"
# input = gets.chomp
#
# age = rand(20..200)
#
# puts "#{input} is #{age} years old!"


def name
  puts "What's your name?"
  input = gets.chomp

  age = rand(20..200)

  if input.empty?
    puts "Teddy is #{age} years old!"
  else
    puts "#{input} is #{age} years old!"
  end
end

name
