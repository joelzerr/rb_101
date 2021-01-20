# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as it does backwards.

# Input:
  # one or more word string

# Output:
  # 0, one or more strings

# Explicit Requirements:
  # method should take one string as an argument
  # each returned substring should be same sequenece both forward and backward.
  # substrings be arranged in the same order that they appear.
  # Duplicate substrings should appear multiple times.
  # palidromes are case sensitive.

# Implicit Requirements:
  # if there are no palimdromes, should return an empty array.
  # single characters are not palindromes.

# Test Cases:
  # palindromes('abcd') == []
  # palindromes('madam') == ['madam', 'ada']
  # palindromes('hello-madam-did-madam-goodbye') == [
  #   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  #   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  #   '-madam-', 'madam', 'ada', 'oo'
  # ]
  # palindromes('knitting cassettes') == [
  #   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
  # ]

# Data Structure:
  # strings will be converted to array of substrings.  Mostly working with array in order to iterate through substrings.

# Algorithm:
  # first define method to take a string as a parameter.
  # initialize palindromic_subs = []
  # initialize sub_arr to the return value of substrings(string)
  # iterate through the sub_arr
  # on each iteration check if string.size > 1
    # palindromic_subs << substring if substring == substring.reverse
  # else not > 1
    # next
  # lastly return palindromic_subs

  def substrings(string)
    result = []
    count = 0
    loop do
      count.upto(string.size - 1) do |index|
        result << string[count..index]
      end
      count += 1
      break if count > string.size
    end
    result
  end

# def palindromes(string)
#   palindromic_subs = []
#   sub_arrs = substrings(string)
#   sub_arrs.each do |str|
#     if str.size > 1
#       palindromic_subs << str if str == str.reverse
#     else
#       next
#     end
#   end
#   palindromic_subs
# end

# Okay so my solution works fine, however one thing I noticed from the LS solution below is that my palidromes Method
# is actually doing its checking if the substrings are palindromes and creating the palindromic_subs array.
# LS solution split these into to methods which is seems like best practice and it makes it more readable.

def palindromes(string)
  all_substrings = substrings(string)
  results = []
  all_substrings.each do |substring|
    results << substring if palindrome?(substring)
  end
  results
end

def palindrome?(string)
  string.downcase == string.downcase.reverse && string.size > 1
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]
