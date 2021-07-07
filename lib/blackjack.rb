require 'pry'

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand 1..11
end

def prompt_user
  # code hit? here
  puts "Type 'h' to hit or 's' to stay"
end

def invalid_command
  puts  "Please enter a valid command"
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def get_user_input
  gets.chomp()
end

def get_user_input
  # code invalid_command here
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   sum = deal_card + deal_card
   display_card_total(sum)
   return sum
end

def hit?(num)
    
    prompt_user
    user_input = get_user_input
    
    if user_input == "h"
      num = num + deal_card
    elsif user_input == "s"
      
    else
      invalid_command
      num = hit?(num)
    end
    num
end
#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total_card_number = initial_round
  
  until total_card_number > 21
    total_card_number = hit?(total_card_number)
    display_card_total(total_card_number)
  end
  end_game(total_card_number)
end
    
