def what_century?(year)

  if year < 101
    century = 1
  elsif year.to_s[-1] == '0'
    century = (year / 100)
  else year > 100
    century = (year / 100) + 1
  end
    suffix(century)
end


def suffix(number)
  number_str = number.to_s

  if number_str[-2] == '1'
    "#{number_str}" + "th"
  elsif number_str[-1] == '1'
    "#{number_str}" + "st"
  elsif number_str[-1] == '2'
    "#{number_str}" + "nd"
  elsif number_str[-1] == '3'
    "#{number_str}" + "rd"
  else
    "#{number_str}" + "th"
  end
end

puts what_century?(101)
puts what_century?(100)
puts what_century?(11201)
puts what_century?(11200)

puts what_century?(5)

puts what_century?(60)

p what_century?(2000) #== '20th'
p what_century?(2001) #== '21st'
p what_century?(1965) #== '20th'
p what_century?(256) #== '3rd'
p what_century?(5) #== '1st'
p what_century?(10103) #== '102nd'
p what_century?(1052) #== '11th'
p what_century?(1127) #== '12th'
p what_century?(11201) #== '113th'
