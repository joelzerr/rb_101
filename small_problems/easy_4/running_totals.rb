# def running_total(numbers)
#   sum = 0
#   numbers.map { |value| sum += value}
# end


def running_total(numbers)
  sum = 0
  numbers.each_with_object([]) { |value, a| a << sum += value}
end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []
