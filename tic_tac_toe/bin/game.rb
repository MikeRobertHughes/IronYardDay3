require 'pry'

puts "Hello, would you like to play black jack? y/n :"

answer = gets.chomp.downcase
if answer == "yes" || answer == "y"
  deck = Deck.new
  player = Player.new
  dealer = Player.new
  deck.shuffle
  puts "Welcome to the future of gaming!!!! This. Is. Black Jack.!"
  puts "\n************* Ready Player One *************\n\n"
  player.accept_card(deck.deal_card)
  player.accept_card(deck.deal_card)
  dealer.accept_card(deck.deal_card)
  puts "You have been dealt #{player.hand_size} cards."
  puts "The dealer is showing: #{dealer.hand}."
  puts "You have a #{player.hand} for a total of #{player.hand_value}."
  puts "Would you like to (S)tay or (H)it?"
  deal = gets.chomp.downcase
  if deal == "h" || deal == "hit"
    player.accept_card(deck.deal_card)
    puts "You now have a #{player.hand} for a total of #{player.hand_value}."
  elsif deal == "s" || deal == "stay"
    puts "The dealer is now playing"
    puts "The dealer has a "
  else
    puts "That's not an option, good bye..."
  end

else
  puts "Whatever..."
end






















########################### Code to create unicode graphics, should I desire........ ###################################

# puts "\u2554" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2557"



