def oddities(array)
  new_arr = []
  array.each_with_index do |element, index|
    if index == 0 || index.even?
      new_arr << element
    end
  end
  p new_arr
end


# def oddities(array)
#   new_arr = []
#   array.each_with_index do |element, index|
#     if index.odd?
#       new_arr << element
#     end
#   end
#   p new_arr
# end
#
oddities(['abc', 'def'])
oddities([123])
oddities([])

# def oddities(array)
#   even_array = []
#   index = 0
#   loop do
#     break if index == array.size
#     even_array << array[index] if index.odd?
#     index += 1
#   end
#   p even_array
# end

# def oddities(array)
#   even_array = []
#   index = 0
#   while index < array.size
#     even_array << array[index] if index.odd?
#     index += 1
#   end
#   p even_array
# end

oddities([1, 2, 3, 4, 5, 6,])
