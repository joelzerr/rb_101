puts "What is your age?"
age = gets.chomp.to_i

puts "What age would you like to retire?"
retire_age = gets.chomp.to_i

current_year = Time.now.year
years_of_work = retire_age - age
retirement_year = current_year + years_of_work

puts "Its 2020. You will retire in #{retirement_year}."

puts "You only have #{years_of_work} years of work to go!"
