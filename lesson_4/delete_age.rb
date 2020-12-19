ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |key, value| value >= 100 }

p ages

# Could have also used keep_if which does the opposite and deletes every key-value pair for which
# the block evaluates to false instead of true. 
