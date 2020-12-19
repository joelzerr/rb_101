def multisum(number)
  range = *(1..number)
  result = []
  range.select do |n|
    if n % 3 == 0 || n % 5 == 0
      result << n
    end
  end
  result.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) #== 234168
