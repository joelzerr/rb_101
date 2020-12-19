def reverse_sentence(string)
  words = []

  string.split.each do |element|
    element.reverse! if element.size >= 5
    words << element
  end

    words.join(' ')
end

puts reverse_sentence('Walk around the block')
