# Starting with the string:
# famous_words = "seven years ago..."
#
# show two different ways to put the expected "Four score and " in front of it.


# famous_words = "seven years ago..."
#
# arr = famous_words.split(' ')
#
# arr.unshift('Four', 'score', 'and')
#
# arr.join(" ")
#
# puts arr

#This first solution didn't print out correctly but seemed really close.


famous_words = "seven years ago..."

more_words = "Four score and"

puts "#{more_words} #{famous_words}"

#These are all possible solutions used by LS.  The above were my own attempts. 

# "Four score and " + famous_words
#
# famous_words.prepend("Four score and ")
#
# "Four score and " << famous_words
