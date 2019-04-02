def welcome
  # code #welcome here
  puts "Welcome to Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand (1...11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  # code #display_card_total here
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input=gets.chomp
end

def end_game (card_total)
  # code #end_game here
  puts ("Sorry you hit #{card_total}. Thanks for playing!")
end

def initial_round
  # code #initial_round here
  sum=0
  2.times do
    sum+= deal_card
  end
  display_card_total
end

def hit?(number)
  # code hit? here
  prompt_user
 if get_user_input == "h"
   number += deal_card
 end
 return number

def invalid_command
  # code invalid_command here
  puts ("Please enter a valid command")
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  total = 0
welcome
total += initial_round
until total > 21
  total = hit?(total)
  display_card_total(total)
end
end_game(total)
