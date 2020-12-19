DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end


integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

# I didn't write any of this code.  This is LS solution.  I was totally stumped on this challenge.
# I was searching for a method than can convert an integer into an array.
# I had never used divmod before and it seemed very complicated at first.  I worked through this solution
# tested things in irb and I now feel I have a better understanding.
# I'm still unclear as to how we can write number, remainder = .
# I've never seen this before, and I still can't tell if it only because we are using the divmod method.
# Or could this be used in other situations as well.  And what is it saying exactly?
# Does it mean that both number and remainder are being assigned to number.divmod?
