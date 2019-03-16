def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  (rand(1..11))
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  answer
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  puts "Your cards add up to #{sum}"
  sum
end

def hit?(current_card_total)
   prompt_user
   answer = get_user_input
   if answer == "h"
     (sum = (deal_card)+current_card_total)
     sum
    elsif answer == "s"
      current_card_total
        else answer != "h" || "s"
          invalid_command
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
  total = initial_round
  until total > 21
  total = hit?(total)
  display_card_total(total)
  end
     end_game(total)
end
    
