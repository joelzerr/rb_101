words = "the flintstones rock"


def titleize(string)
  string = string.split
  string.map! { |word| word.capitalize! }
  string.join(' ')
end

words = titleize(words)

p words



# Below is the launch school solution.  I did this exact thing on my first attempt.
# It works but doesn't permanently change the words variable.  Which is what it seemed it was asking.
# My above solution solves this.

# p words.split.map! { |word| word.capitalize! }.join(' ')
#
# p words
