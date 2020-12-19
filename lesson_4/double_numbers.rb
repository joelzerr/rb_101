def double_numbers(numbers, integer)
  counter = 0

  loop do
    break if counter == numbers.size

    # current_number = numbers[counter]
    # numbers[counter] = current_number * 2
    numbers[counter] *= integer
    counter += 1
  end

  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
p double_numbers(my_numbers, 3)

p my_numbers
