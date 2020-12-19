# def string_to_integer(string)
#   string.chars.select do |n|
#     if n == '0'
#       result << 0
#     elsif n == '1'
#       result << 1
#     elsif n == '2'
#       result << 2
#     elsif n == '3'
#       result << 3
#     elsif n == '4'
#       result << 4
#     elsif n == '5'
#       result << 5
#     elsif n == '6'
#       result << 6
#     elsif n == '7'
#       result << 7
#     elsif n == '8'
#       result << 8
#     else n == '9'
#       result << 9
#     end
#     string.join.to_i
#   end
# end


# okay so my code worked for this problem, but then I realized we weren't supposed to do this using to_i.
# I couldn't for the life of me figure out a way to do this without this conversion.
# below is the LS solution.  Using a hash to convert the string digits to numbers is brilliant!
# I felt silly for not figuring that part out on my own.
# Even if I had, I do think I would have struggled with the computation logic.
# I've studied this solution and tested different parts of it and I feel I understand it well.

DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
