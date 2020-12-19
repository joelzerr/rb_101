ALPHANUMERIC = ('a'..'z').to_a + (0 .. 9).to_a

def uuid
  ALPHANUMERIC.sample(8).join +
  "-" + ALPHANUMERIC.sample(4).join +
  "-" + ALPHANUMERIC.sample(4).join +
  "-" + ALPHANUMERIC.sample(4).join +
  "-" + ALPHANUMERIC.sample(12).join
end

p uuid

# My code above works.  But I can't fingure out how to write it on multiple lines so its more readable.
# My solution is much different than the LS solution below.

# def generate_UUID
#   characters = []
#   (0..9).each { |digit| characters << digit.to_s }
#   ('a'..'f').each { |digit| characters << digit }
#
#   uuid = ""
#   sections = [8, 4, 4, 4, 12]
#   sections.each_with_index do |section, index|
#     section.times { uuid += characters.sample }
#     uuid += '-' unless index >= sections.size - 1
#   end
#
#   uuid
# end
