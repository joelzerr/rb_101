
# def joinor(array, delimiter = ', ', word = 'or')
#   last_element = array.pop
#   array << word
#   array << last_element
#   array.join(delimiter)
# end

def joinor(array, delimiter = ', ', word = 'or')
  if array.size == 2
    array.join(" #{word} ")
  else
    array[-1] = "#{word} #{array.last}"
    array.join(delimiter)
  end
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')
