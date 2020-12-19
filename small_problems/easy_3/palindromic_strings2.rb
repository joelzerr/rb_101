def palindrome?(thing)
  thing == thing.reverse
end


def real_palindrome?(string)
  result_arr = []
  letters_numbers = ('a'..'z').to_a + ('0'..'9').to_a
  string_arr = string.downcase.chars

  string_arr.each do | letter |
    if letters_numbers.include?(letter)
    result_arr << letter
    end
  end
    p palindrome?(result_arr)
end

real_palindrome?("Madam, I'm Adam")
real_palindrome?('123ab321')
