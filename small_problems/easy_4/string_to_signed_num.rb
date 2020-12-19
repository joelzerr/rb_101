DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_signed_integer(string)
  digits = string.chars
  sign = digits[0]
  if sign == '-' || sign == '+'
    digits.shift
  end
  digits.map! { |char| DIGITS[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  if sign == '-'
    -value
  else
    value
  end
end

# For some reason I forgot to reuse my string_to_integer method from the previous problem.
# I basically rewrote it and added more code to account for signed numbers.  It works, but
# The LS solution below is much more effiecient and cleaner.
# I actually didn't know that I could use string[1..-1] to obtain only the range of the string I want.
# This was great to find out as I think this could be a very useful tool for other challenges.  

# def string_to_integer(string)
#   digits = string.chars.map { |char| DIGITS[char] }
#
#   value = 0
#   digits.each { |digit| value = 10 * value + digit }
#   value
# end

# def string_to_signed_integer(string)
#   case string[0]
#   when '-' then -string_to_integer(string[1..-1])
#   when '+' then string_to_integer(string[1..-1])
#   else          string_to_integer(string)
#   end
# end





p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
