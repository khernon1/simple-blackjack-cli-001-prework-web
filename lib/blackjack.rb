def welcome
puts "Welcome to the Blackjack Table"
end

def deal_card
  i = Random.rand(1..11)
#  return i
end

def display_card_total(card)
  puts "Your cards add up to #{card}"
end

def prompt_user
puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  answer = gets.chomp
  answer
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
n = 0
  2.times do
    n += deal_card
  end
display_card_total(n)
return n
end

def hit?(num)
prompt_user
answer = get_user_input

if answer == "h"
  num += deal_card
elsif answer == "s"
elsif answer != "h" || answer != "s"
  invalid_command
end

return num
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
welcome
hand = initial_round

until hand > 21
  hand = hit?(hand)
  display_card_total(hand)
end

end_game(hand)
end
#1. Welcome the user
#2. Deal them their first two cards, i.e. their `initial_round`
#intiial 3. Ask them if they want to hit or stay
#initial 4. If they want to hit, deal another card
#initial 5. If they want to stay, ask them again!
#6. If their card total exceeds 21, the game ends.
#Use a loop constructor (I'd recommend `until`, but that is by no means your only option)
#to enact the above game play in the `#runner` method.
#Then, check out the `lib/runner.rb` file. Notice that it is simply calling the `#runner` method.
#The runner file will call the `#runner` method which should in turn utilize all the other methods you built!
