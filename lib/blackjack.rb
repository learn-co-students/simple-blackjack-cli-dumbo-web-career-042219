def welcome
  puts "Welcome to the Blackjack Table"
  # code #welcome here
  end



def deal_card
  (rand(1..11) )

  end

  # code #deal_card here


def display_card_total (sum_of_players_card)
  puts "Your cards add up to #{sum_of_players_card}"

  # code #display_card_total here
end


def prompt_user
   puts"Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  user_input = gets.chomp
  # code #get_user_input here
end

def end_game(integer)
puts"Sorry, you hit #{integer}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  total = deal_card + deal_card
  display_card_total(total)
  return total


end

def hit?(card_total)
  prompt_user
 input = get_user_input
until input == 'h' || input == 's'
   invalid_command
   prompt_user
   input = get_user_input
  end
  if input == 'h'
    card_total += deal_card
  elsif input == 's'
    card_total
  end
end

def invalid_command
  #if prompt_user != h|| s
    puts "Please enter a valid command"
  # code invalid_command here
  #end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome 

if h || s
then hit + display_card_total

until card_total > 21
  return end_game
end
 end
