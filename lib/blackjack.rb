def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1...11)
  return card
end

def display_card_total(number)
  puts "Your cards add up to #{number}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets 
end

def end_game(number)
 puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  return sum
end

def hit?(number)
  prompt_user
  input = get_user_input
  if input === "h"
    number += deal_card
    number
  elsif input === "s"
    number
  else
    invalid_command
    prompt_user
  end
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
  until card_total > 21
    hit?(card_total)
    display_card_total(card_total)
  end
end_game(card_total)
end
    

