produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(produce_hash)
  selected_keys = produce_hash.keys
  counter = 0
  new_produce = {}

  loop do
    break if counter == produce_hash.size
    current_produce = selected_keys[counter]
    current_value = produce_hash[current_produce]

    if current_value == "Fruit"
      new_produce[current_produce] = current_value
    end

  counter += 1
  end

  new_produce
end

puts select_fruit(produce)
