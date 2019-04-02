def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1...12)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  2.times do
    sum += deal_card
  end
  display_card_total(sum)
  sum
end

def hit?(number)
  prompt_user
  if get_user_input == "h"
    number += deal_card
  end
  return number
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  total = 0
  welcome
  total += initial_round
  until total > 21
    total = hit?(total)
    display_card_total(total)
  end
  end_game(total)
end
    
