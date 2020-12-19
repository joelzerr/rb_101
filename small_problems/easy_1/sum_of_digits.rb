def sum(number)
  arr = number.to_s.chars
  arr.map! { |str| str.to_i }

  arr.sum
end

puts sum(123)
puts sum(456)

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
