statement = "The Flintstones Rock"

result = {}

letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result

#This one was super challenging for me.  I was unable to do it on my own.
#The solution makes perfect sense to me after I went through it step by step
#and tested things in irb. 
