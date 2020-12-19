PERCENTAGE = 0.01

puts "How much is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip = gets.chomp.to_f

tip_total = ((tip * PERCENTAGE) * bill).round(2)

total_bill = (bill + tip_total).round(2)

puts "The tip is $#{format("%.2f" , tip_total)}."

puts "The total is $#{format("%.2f" , total_bill)}."
