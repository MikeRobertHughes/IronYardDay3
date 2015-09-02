require 'pry'
require_relative "../lib/card"
require_relative "../lib/deck"
require_relative "../lib/player"

puts "Hello, would you like to play bro jack? y/n :"

answer = gets.chomp.downcase
if answer == "yes" || answer == "y"
  deck = Deck.new
  player = Player.new
  dealer = Player.new
  deck.shuffle
  puts "Welcome to the future of gaming!!!! This. Is. Bro Jack!"
  puts "\n************* Ready Bro One *************\n\n"
  2.times { player.accept_card(deck.deal_card) }
  dealer.accept_card(deck.deal_card)
  puts "You have been dealt #{player.hand_size} cards."
  puts "The dealer is showing: #{dealer.hand}."
  puts "You have a #{player.hand} for a total of #{player.hand_value}."
  if player.hand_value == 21
    puts "You totes got #{player.hand_value} broseph! SIIIIIIIICK!!!!"
    system("say You totes got #{player.hand_value} broseph! siiiick!!")
    puts "Oh yeah brah! You just won hella skrill! Buy me a Natty Ice NOW!!! Woo!"
    system('say Oh yeah brah! You just won hella skrill! Buy me a Natty Ice now!!! Woo!')
  end
  deal = nil
  while player.hand_value < 21 && (deal != "s" && deal != "stay")
    puts "Would you like to (S)tay or (H)it?"
    deal = gets.chomp.downcase
    if deal == "h" || deal == "hit"
      player.accept_card(deck.deal_card)
      puts "You now have a #{player.hand} for a total of #{player.hand_value}."
      if player.hand_value > 21
        puts "You totally busted HARD bro!"
        system('say You totally busted hard, bro!')
        puts "Bum luck duder..Let's go get a PBR and play some gamecube."
        system('say Bum luck duder. Lets go get a PBR')
        system('say and play some gamecube')
        break
      elsif player.hand_value == 21
        puts "You totes got #{player.hand_value} broseph! SIIIIIIIICK!!!!"
        system("say You totes got #{player.hand_value} broseph! siiick!!")
        break
      end
    elsif deal == "s" || deal == "stay"
      puts "The dealer is now drawing.."
      system('sleep 1')
      while dealer.hand_value < 16
        dealer_draw = deck.deal_card
        puts "The dealer drew a #{dealer_draw}."
        system('sleep .5')
        dealer.accept_card(dealer_draw)
        puts "The dealer now has a #{dealer.hand} for a total of #{dealer.hand_value}."
        system('sleep .5')
      end
      if dealer.hand_value > 21
        puts "The dealer got #{dealer.hand_value}. He totally busted bro!!!! SIIIIIIIICK!!!! "
        puts "You just won hella skrill! Buy me a Natty Ice NOW!!! Woo!"
        system('say You just won hella skrill! Buy me a Natty Ice NOW!!! Woo!')
      elsif dealer.hand_value >= player.hand_value
        puts "You have #{player.hand_value} but the dealer has #{dealer.hand_value}."
        puts "Bum luck duder..it looks like you lost. Let's go get a PBR..."
        puts "and play some gamecube."
        system('say Bum luck duder. It looks like you lost. Lets go get a PBR')
        system('say and play some gamecube')
      elsif player.hand_value > dealer.hand_value
        puts "The dealer has #{dealer.hand_value} and you have #{player.hand_value}!"
        puts "Oh yeah brah! You just won hella skrill! Buy me a Natty Ice NOW!!! Woo!"
        system('say Oh yeah brah! You just won hella skrill! Buy me a Natty Ice now!!! Woo!')
      end
    end
    # puts "DEBUG: deal: #{deal.inspect}"
  end
else
  puts "Whatever bro..."
end






















########################### Code to create unicode graphics, should I desire........ ###################################

# puts "\u2554" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2557"



