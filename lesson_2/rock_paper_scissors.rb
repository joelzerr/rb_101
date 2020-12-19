# VALID_CHOICES = ['rock', 'paper', 'scissors', 'lizard', 'spock']

VALID_CHOICES = {'r' => 'rock',
                      'p' => 'paper',
                      's' => 'scissors',
                      'l' => 'lizard',
                      'sp' => 'spock'}

WHO_WINS = { 'rock' => ['lizard', 'scissors'],
                      'paper' => ['rock', 'spock'],
                      'scissors' => ['paper', 'lizard'],
                      'lizard' => ['spock', 'paper'],
                      'spock' => ['scissors', 'rock'] }

def prompt(message)
  Kernel.puts("=> #{message}")
end

# def win?(first, second)
#   (first == 'rock' && second == 'scissors') ||
#     (first == 'rock' && second == 'lizard') ||
#     (first == 'paper' && second == 'rock') ||
#     (first == 'paper' && second == 'spock') ||
#     (first == 'scissors' && second == 'paper') ||
#     (first == 'scissors' && second == 'lizard') ||
#     (first == 'lizard' && second == 'spock') ||
#     (first == 'lizard' && second == 'paper') ||
#     (first == 'spock' && second == 'scissors') ||
#     (first == 'spock' && second == 'rock')
# end

def winner(first, second)
  WHO_WINS[first].include?(second)
end

def display_result(player, computer)
  if winner(player, computer)
    "You won!"
  elsif winner(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

def get_choice(a)
  Kernel.gets().chomp().downcase()
end

loop do
  system "clear"
  prompt("Welcome to rock, paper, scissors, lizard, spock!")
  prompt("The first player to 5 wins!")

  user_score = 0
  computer_score = 0

  user_move = <<-MSG
  Please choose from the following:
    'r' = rock
    'p' = paper
    's' = scissors
    'l' = lizard
    'sp' = spock
  MSG

  loop do
    choice = ''
    loop do
      # prompt("Choose one: #{VALID_CHOICES.join(', ')}")
      # prompt("You may also select from the following abbrevations: #{VALID_ABBREVIATION.keys}")
      prompt(user_move)
      choice = get_choice(user_move)

      if VALID_CHOICES.key?(choice)
        break
      else
        prompt("Thats not a valid choice.")
      end
    end

    computer_choice = VALID_CHOICES.values.sample

    prompt("You chose #{choice}; Computer chose #{computer_choice}.")

    result = display_result(VALID_CHOICES[choice], computer_choice)

    if result == "You won!"
      user_score += 1
      prompt("You won!")
    elsif result == "Computer won!"
      computer_score += 1
      prompt("Computer won!")
    else
      prompt("It was a tie.")
    end

    prompt("Player score = #{user_score}  Computer score = #{computer_score}")

    if user_score == 5
      prompt("You won 5 rounds!")
      break
    elsif computer_score == 5
      prompt("computer won 5 rounds!")
      break
    end
  end

    prompt("Do you want to play again?")
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
end
  prompt("Thank you for playing.  Good bye!")
