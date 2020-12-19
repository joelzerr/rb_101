produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(food)
  selected_produce = food.keys
  counter = 0
  new_produce = {}

  loop do
    break if counter == food.size
    current_produce = selected_produce[counter]
    current_value = food[current_produce]

    if current_value == "Fruit"
      new_produce[current_produce] = current_value
    end
    counter += 1
  end
  new_produce
end

p select_fruit(produce)

# p produce['apple']
