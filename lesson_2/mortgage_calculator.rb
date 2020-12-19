# Here we are asked to build a mortgage calculator.
  # We need to to ask the user for the following pieces of info.
  # loan amount
  # annual percentage rate (APR)
  # loan duration

# Next we will need to calculate the following:
  #Monthly Interest rate
  #Loan duration in months
  #Monthly payment

def prompt(message)
  puts("=> #{message}")
end

def valid_integer?(num)
  num.to_i.to_s == num
end

def valid_float?(float)
  float.to_f.to_s == float
end

def number?(input)
  valid_integer?(input) || valid_float?(input)
end

prompt("Welcome to the mortgage calculator! Please enter your name:")

name = ''
loop do
  name = gets.chomp

  if name.empty?
    prompt("Make sure to enter a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  loan_amount = ''
  loop do
    prompt("Please enter your loan amount to the nearest whole dollar:")
    loan_amount = gets.chomp

    if valid_integer?(loan_amount)
      break
    else
      prompt("That's not a valid loan amount!")
    end
  end

  annual_rate = ''
  loop do
    prompt("Please enter your annual percentage rate (APR):")
    annual_rate = gets.chomp

    if number?(annual_rate)
      break
    else
      prompt("That is not a valid rate!")
    end
  end

  loan_duration = ''
  loop do
    prompt("Please enter your loan duration in years:")
    loan_duration = gets.chomp

    if number?(loan_duration)
      break
    else
      prompt("That's not a valid duration!")
    end
  end

  monthly_interest = (annual_rate.to_f / 12) * 0.01

  duration_months = loan_duration.to_i * 12

  monthly_payment = loan_amount.to_i *
                    (monthly_interest.to_f / (1 - (1 + monthly_interest.to_f)**(-duration_months.to_i)))

  prompt("Your monthly payment is #{monthly_payment}.")

  prompt("Do you want to perform another calculation?(Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
