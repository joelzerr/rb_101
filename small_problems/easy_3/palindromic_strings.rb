# def palindrome?(string)
#   string == string.reverse
# end
#
# p palindrome?('maddam')
# p palindrome?('Maddam')
#
# def palindrome?(array)
#   array == array.reverse
# end
#
# p palindrome?([1,2,3,2,1])
# p palindrome?([1,2,3,1,2])

def palindrome?(thing)
  thing == thing.reverse
end

p palindrome?('maddam')
p palindrome?('Maddam')
p palindrome?([1,2,3,2,1])
p palindrome?([1,2,3,1,2])
