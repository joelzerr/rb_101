# SQMETERS_TO_FEET = 10.7639
#
# puts "Enter the length of the room in meters."
#
# length = gets.chomp.to_f
#
# puts "Enter the width of the room in meters."
#
# width = gets.chomp.to_f
#
# square_meters = (length * width).round(2)
#
# square_feet = (square_meters * SQMETERS_TO_FEET).round(2)
#
# puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."


SQFEET_TO_INCHES = 144

SQINCHES_TO_CM = 6.4516

def room_measurements

  puts "Enter the length of the room in feet."
  length = gets.chomp.to_f

  puts "Enter the width of the room in feet."
  width = gets.chomp.to_f

  conversions(length, width)
end

def conversions(length, width)

  square_feet = (length * width).round(2)

  square_inches = (square_feet * SQFEET_TO_INCHES).round(2)

  square_cm = (square_inches * SQINCHES_TO_CM).round(2)

  puts "The area of the room is #{square_feet} square feet, #{square_inches} square inches, and #{square_cm} square centimeters."
end

room_measurements
