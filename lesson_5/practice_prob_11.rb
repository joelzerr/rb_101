arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

p arr.map do |array|
  array.select do |n|
    n % 3 == 0
  end
end
