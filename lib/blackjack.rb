def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  user_input = gets.chomp
  user_input
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   hand = deal_card + deal_card
   display_card_total(hand)
   hand
end

def hit?(card_total)
prompt_user
response = get_user_input
  if response == "s"
    card_total
  elsif response == "h"
    card_total += deal_card
  else 
    invalid_command 
    prompt_user
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  loop do
    if card_total < 21
    card_total = hit?(card_total) 
    display_card_total(card_total) 
    elsif card_total > 21
    end_game(card_total)
    return nil
    end
  end
end
    
