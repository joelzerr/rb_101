SUITS = ['C', 'D', 'H', 'S']
VALUES = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']

def prompt(msg)
  puts "#{msg}"
end

def initialize_deck
  SUITS.product(VALUES).shuffle
end

def initial_deal(player, cards)
  2.times do
    player << cards.pop
  end
end

def total(cards)
  # cards = [['H', '3'], ['S', 'Q'], ... ]
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0 # J, Q, K
      sum += 10
    else
      sum += value.to_i
    end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def hit_card(player, cards)
  player << cards.pop
end

def busted?(cards)
  total(cards) > 21
end

def display_winner(player, dealer)
  result = find_winner(player, dealer)

  case result
  when :player_busted
    prompt "You Busted! Dealer Wins!"
  when :dealer_busted
    prompt "Dealer Busted! You Win!"
  when :player
    prompt "You won!"
  when :dealer
    prompt "Dealer won!"
  when :tie
    prompt "It's a tie!"
  end
end

def find_winner(player, dealer)
  player_total = total(player)
  dealer_total = total(dealer)

  if player_total > 21
    :player_busted
  elsif dealer_total > 21
    :dealer_busted
  elsif dealer_total < player_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def play_again?
  prompt "Would you like to play again?(y/n)"
  answer = gets.chomp.downcase
  answer.start_with?('y')
end

loop do
  prompt "Welcome to Twenty-One!"
  puts "======================"

  deck = initialize_deck
  player_cards = []
  dealer_cards = []

  initial_deal(player_cards, deck)
  initial_deal(dealer_cards, deck)

  player_total = total(player_cards)
  dealer_total = total(dealer_cards)

  prompt "You have #{player_cards[0].join} and #{player_cards[1].join}."
  prompt "Your total is #{player_total}."
  puts "===================================="
  prompt "Dealer has #{dealer_cards[0].join} and ?"
  puts "===================================="

  loop do
    prompt "Would you like to hit or stay?(h/s)"
    puts "=================================="
    player_go = gets.chomp.downcase
    if player_go == 'h'
      hit_card(player_cards, deck)
      prompt "Your next card is #{player_cards[-1].join}."
      prompt "Your total is now #{total(player_total)}"
    end
    break if player_go == 's' || busted?(player_cards)
  end

  if busted?(player_cards)
    display_winner(player_cards, dealer_cards)
    play_again? ? next : break
  else
    prompt "You stayed at #{total(player_cards)}"
    prompt "Dealer has #{dealer_cards[0].join} and #{dealer_cards[1].join}"
  end

  loop do
    break if total(dealer_cards) >= 17
    prompt "Dealer chose to hit!"
    hit_card(dealer_cards, deck)
    prompt "Dealers next card is #{dealer_cards[-1].join}"
  end

  if busted?(dealer_cards)
    prompt "Dealers total is now #{total(dealer_cards)}"
    display_winner(player_cards, dealer_cards)
    play_again? ? next : break
  else
    prompt "Dealer stays at #{total(dealer_cards)}"
  end

  puts "========================="
  prompt "Dealer has #{dealer_cards} for a total of #{total(dealer_cards)}."
  prompt "You have #{player_cards} for a total of #{total(player_cards)}."
  puts "========================="

  display_winner(player_cards, dealer_cards)

  break unless play_again?
end

prompt "Thank you for playing Twenty-One!"
