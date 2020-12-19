def calculate_bonus(num, boolean)
  if boolean == false
    0
  else
    boolean == true
    num / 2
  end
end

puts calculate_bonus(1000, true)

puts calculate_bonus(5000, false)

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


# def calculate_bonus(salary, bonus)
#   bonus ? (salary / 2) : 0
# end

#This is the LS solution which takes advantage of the ternary operator since bonus will only ever be true or false. 
