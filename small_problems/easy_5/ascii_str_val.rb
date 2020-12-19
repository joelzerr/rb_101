def ascii_value(string)
  value_arr = []
  string.chars.each do |letter|
    value_arr << letter.ord
  end
  value_arr.sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

# I was able to write this code for this challenge in about 5 min.

# Below is the LS solution which is similar and a bit cleaner.
# The thing that I like about the LS solution is that it doens't convert the string to an array.
# Instead it uses the string method each_char to iterate over each character in the string.

# def ascii_value(string)
#   sum = 0
#   string.each_char { |char| sum += char.ord }
#   sum
# end
