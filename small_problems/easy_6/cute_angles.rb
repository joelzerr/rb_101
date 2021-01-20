# Write a method that takes a floating point number that represents an angle between 0 - 360 degrees.
# It should return a string that represents that angle in degrees, minutes, and seconds.

# Input:
  # - floating point number

# Output:
  # - string representing angle in degrees, minutes and seconds.

# Explicit Requirements:
  # - Degree symbol should be used. (Constant has been given)
  # - Single quote for minutes.
  # - Double quote for seconds.
  # - Degree has 60 min, while a min has 60 seconds.
  # - Should use 2 digit numbers with leading zeros when formatting minutes and seconds.

# Implicit Requirements:
  # - Degrees should be represented by the number in front of the decimal.
  # - The number after the decimal represents a percentage of one degree.

# Test Cases:
  # dms(30) == %(30°00'00")
  # dms(76.73) == %(76°43'48")
  # dms(254.6) == %(254°36'00")
  # dms(93.034773) == %(93°02'05")
  # dms(0) == %(0°00'00")
  # dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

# Data Structure:
 # - I am  going to be converting a number to a string.
 # - I think it could be possible to separate the numbers into an array but unsure of this approach.
 # - It also possible to use the indices of the floating point number to separate out degrees, minutes, seconds.

# Mental Model:
  # _ Establish constants that we know of Degrees = 60 min, Minutes = 60 sec.
  # - Take the number in front of the decimal and save it as the degrees.
  # - Take the number after the decimal and multiply it by 60 min
      # Take that number in front of that decimal and save it as minutes.
      # The number after the decimal gets mutliplied by 60 sec.
      # make sure to round so there is always 2 digits for min and sec.
  # Format each number so they contain their correct symbols and leading zeros if appropriate.
  # Convert each number to a string and combine into one string.

# DEGREE = "\xC2\xB0"
#
# MINUTES = 60
#
# SECONDS = 60
#
# SECONDS_PER_DEGREE = MINUTES * SECONDS
#
# def percent_min(x)
#   x.to_s.split('.').last.to_f / 100
# end
#
# def percent_sec(x)
#   x.to_s.split('.').last.to_f / 10
# end
#
# def dms(n)
#   degree = n.floor.to_s + DEGREE
#   minutes = (percent_min(n) * MINUTES)#.floor.to_s + "'"
#   seconds = percent_sec(minutes) * MINUTES
#   result = "#{degree}" + "#{minutes.floor.round(2).to_s + "'"}" + "#{seconds.floor.round(2).to_s}"
#   result
# end
#
# p dms(76.73)
#
# p dms(93.034773)

# This one I got really stuck on.  I didn't even get to the formatting part of my code.  It seemed like I was close,
# but code only worked for some of the test cases.
# I've taken detailed notes on the below solution because for some reason I keep forgetting to use divmod for
# challenges when it will really make my life easier.  Also, have taken the time to really dive into #format
# more because thats also something that has still been confusing.
# Below is the LS solution. 

DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = MINUTES_PER_DEGREE * SECONDS_PER_MINUTE

def dms(degrees_float)
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end
