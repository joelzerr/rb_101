arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

arr.map do |a|
  a.sort.reverse
end

# Although my code worked, below is the LS solution that doesn't use the reverse method.
# Instead it calls sort on the sub-array and changes the order of the a & b.

# arr.map do |sub_arr|
#   sub_arr.sort do |a, b|
#     b <=> a
#   end
# end
