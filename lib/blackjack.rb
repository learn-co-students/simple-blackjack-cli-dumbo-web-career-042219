def welcome
 puts  "Welcome to the Blackjack Table"
end

def deal_card
 rand (1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
 if num>21
   puts "Sorry, you hit #{num}. Thanks for playing!"
 end
end

def initial_round
  sum=deal_card+deal_card
  display_card_total(sum)
  sum
end

def hit?(newTotal)
  prompt_user
  input= get_user_input
  if input == "h"
    newTotal += deal_card
    elsif input == "s"
    return newTotal
  end
    
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  hand=initial_round
  until hand>21 do
  hand=hit?(hand)
  display_card_total(hand)
end 
end_game(hand)
end
    
