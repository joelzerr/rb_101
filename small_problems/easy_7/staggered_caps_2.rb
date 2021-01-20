def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result += char
    elsif need_upper
      result += char.upcase
      need_upper = !need_upper
    else
      result += char.downcase
      need_upper = !need_upper
    end
  end
  p result
end

# def staggered_case(string)
#   string_arr = string.chars
#   need_upper = true
#   result = ''
#   string_arr.each do |char|
#       if ('a'..'z').include?(char.downcase) && need_upper
#         result << char.upcase
#         need_upper = !need_upper
#       elsif ('a'..'z').include?(char.downcase)
#         result << char.downcase
#         need_upper = !need_upper
#       else
#         result << char
#       end
#     end
#   p result
# end

# So I struggled with this one for awhile because I had the line need_upper = !need_upper after the conditional like
# it was in the first challenge.  It was causing the value of need_upper to change even on the iteration where the
# character wasn't a letter.  This wasn't allowing every other letter to alternate after iterating over a non - letter.

# Below is the LS solution which takes a similar approach. It avoids changing need_upper when processing non_alphabetic
# characters.  

# def staggered_case(string)
#   result = ''
#   need_upper = true
#   string.chars.each do |char|
#     if char =~ /[a-z]/i
#       if need_upper
#         result += char.upcase
#       else
#         result += char.downcase
#       end
#       need_upper = !need_upper
#     else
#       result += char
#     end
#   end
#   result
# end

p staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') == 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
