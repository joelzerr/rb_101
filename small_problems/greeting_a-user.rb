def greeting(person)
  "Hello " + person + "."
end

puts "What is your name?"
name = gets.chomp

if name.include?('!')
  puts greeting(name).delete('!').upcase + " WHY ARE WE SCREAMING?"
else
  puts greeting(name)
end

#LS Solution below

# print 'What is your name? '
# name = gets.chomp
#
# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end
