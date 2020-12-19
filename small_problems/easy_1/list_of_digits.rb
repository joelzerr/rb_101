def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

p digit_list(12345)

#(&:to_i) is Ruby syntatic sugar.  Shorthand for the {} block below. 

# def digit_list(number)
#   number.to_s.chars.map { |char| char.to_i }
# end
#
# p digit_list(12345)
