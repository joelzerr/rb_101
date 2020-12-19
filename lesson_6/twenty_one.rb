require 'pry'

deck = { '2C': 2, '3C': 3, '4C': 4, '5C': 5, '6C': 6, '7C': 7, '8C': 8, '9C': 9, '10C': 10, 'JC': 10, 'QC': 10, 'KC': 10, 'AC': 11,
        '2D': 2, '3D': 3, '4D': 4, '5D': 5, '6D': 6, '7D': 7, '8D': 8, '9D': 9, '10D': 10, 'JD': 10, 'QD': 10, 'KD': 10, 'AD': 11,
        '2H': 2, '3H': 3, '4H': 4, '5H': 5, '6H': 6, '7H': 7, '8H': 8, '9H': 9, '10H': 10, 'JH': 10, 'QH': 10, 'KH': 10, 'AH': 11,
        '2S': 2, '3S': 3, '4S': 4, '5S': 5, '6S': 6, '7S': 7, '8S': 8, '9S': 9, '10S': 10, 'JS': 10, 'QS': 10, 'KS': 10, 'AS': 11
      }
def deal_player_cards(player , cards)
  player << cards.keys.sample(2)
  player.flatten!
end

def deal_dealer_cards(dealer , cards)
  dealer << cards.keys.sample(2)
  dealer.flatten!
end

def update_deck(new_deck , cards , player)
  new_deck = cards.delete_if { |k, v| player.include?(k) }
end

def busted?(total_hand)
  total_hand > 21
end

player_cards = []

deal_player_cards(player_cards , deck)

# p player_cards.join(' ')


remaining_deck = deck.delete_if { |key, value| player_cards.include?(key) }


p remaining_deck

dealer_cards = []

deal_dealer_cards(dealer_cards , remaining_deck)
p dealer_cards[0]

update_deck(remaining_deck , deck , dealer_cards)

p remaining_deck

p player_cards

# p deck[player_cards[0]] + deck[player_cards[1]]


# answer = nil
# loop do
#   puts "hit or stay?"
#   answer = gets.chomp
#   break if answer == 'stay' || busted?(player_total)
#   # if answer == 'hit'
#   #   deal_card
# end
#
# if busted?(player_total)
#   # probably end the game? or ask the user to play again?
#   puts "You busted!"
# else
#   puts "You chose to stay!"  # if player didn't bust, must have stayed to get here
# end
