require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')



# ask the user for two numbers
# ask the user for an operation to perform
# perform the operartion on the two numbers
# output the result

def prompt(message)
  puts("=> #{message}")
end

#def valid_number?(num)
  #num.to_i != 0
#end

#Below was the better way to check for a valid number.

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Mutiplying'
  when '4'
    'Dividing'
  end
end

#puts "Welcome to calculator!"
#prompt("Welcome to calculator! Enter your name:")
prompt(MESSAGES['welcome']) # This is what it looks like after using a configuration file for the messages.

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt(MESSAGES['valid_name']) #This was also changed from prompt('Make sure to enter a valid name.')
  else
    break
  end
end

prompt("Hi #{name}!")

loop do #this is the main loop!

  #puts "Enter the first number."
  number1 = ''
  loop do
  prompt("Enter the first number")
  number1 = gets.chomp

  if valid_number?(number1)
    break
  else
    prompt("Hmm...  that doesn't look like a valid number.")
    end
  end

  #puts "Enter the second number."
  number2 = ''
  loop do
  prompt("Enter the second number.")
  number2 = gets.chomp

  if valid_number?(number2)
    break
  else
    prompt("Hmm...  that doesn't look like a valid number.")
    end
  end

  operation_prompt = <<-MSG
    What operation would you like me to perform?
    1) Add
    2) Subtract
    3) Multiply
    4) Divide
  MSG

  prompt(operation_prompt)
  #puts "What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide"
  #prompt("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")

  operation = ''

  loop do
  operation = gets.chomp

  if %w(1 2 3 4).include?(operation)
    break
  else
    prompt("Must choose 1,2,3 or 4.")
  end
end
  #if operation == '1'
  #  result = number1.to_f + number2.to_f
  #elsif operation == '2'
  #  result = number1.to_f - number2.to_f
  #elsif operation == '3'
  #  result = number1.to_f * number2.to_f
  #else operation == '4'
  #  result = number1.to_f / number2.to_f
  #end

prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
  when '1'
    number1.to_f + number2.to_f
  when '2'
    number1.to_f - number2.to_f
  when '3'
    number1.to_f * number2.to_f
  when '4'
    number1.to_f / number2.to_f
  end

  #puts "The result is #{result}."
  prompt("The result is #{result}.")

  prompt("Do you want to perform another calculation?(Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator! Good bye")
