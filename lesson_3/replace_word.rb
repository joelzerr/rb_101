advice = "Few things in life are as important as house training your pet dinosaur."

arr = advice.split(' ')

arr.map! do |element|
  if element == "important"
    "urgent"
  else
    element
  end
end

puts arr.join(' ')


# advice.gsub!('important', 'urgent')
#
# puts advice

#The above is the LS solution.
