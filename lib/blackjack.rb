def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total (number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_card = deal_card
  second_card = deal_card
  sum_cards = first_card + second_card
  display_card_total(sum_cards)
  return sum_cards
end

def hit?(total)
  # code hit? here
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    return total + deal_card
  elsif user_input == 's'
    return total
  else
    invalid_command(total)
  end
end

def invalid_command(total)
  # code invalid_command here
  puts "Sorry, that is not a valid command."
  hit?(total)
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum_of_cards = initial_round
  until sum_of_cards > 21 do
    new_total = hit?(sum_of_cards)
    sum_of_cards = new_total
    display_card_total(sum_of_cards)
  end
  end_game(sum_of_cards)
  
end
    
