require 'pry'
require_relative "../lib/card"
require_relative "../lib/deck"
require_relative "../lib/player"

puts "Sup bro?! Wanna play sum bro jack? y/n :"

answer = gets.chomp.downcase
if answer == "yes" || answer == "y"
  while answer == "yes" || answer == "y"
    deck = Deck.new
    player = Player.new
    dealer = Player.new
    deck.shuffle
    puts "Welcome to the future of gaming bro-brah!!!! This. Is. Bro Jack!"
    system('say Welcome to the future of gaming bro-bra!! This. Is. Bro Jack!')
    puts "\n************* Ready Bro One *************\n\n"
    2.times { player.accept_card(deck.deal_card) }
    dealer.accept_card(deck.deal_card)
    puts "You have been dealt #{player.hand_size} cards."
    puts "The dealer is showing: #{dealer.hand}."
    puts "You have a #{player.hand} for a total of #{player.hand_value}."
    if player.hand_value == 21
      player.win(player.hand_value)
    end
    deal = nil
    while player.hand_value < 21 && (deal != "s" && deal != "stay")
      puts "Wanna (H)it that or (S)tay bro?"
      deal = gets.chomp.downcase
      if deal == "h" || deal == "hit"
        player.accept_card(deck.deal_card)
        puts "You now have a #{player.hand} for a total of #{player.hand_value}."
        if player.hand_value > 21
          puts "You totally busted HARD bro!"
          system('say You totally busted hard, bro!')
          player.lose
          break
        elsif player.hand_value == 21
          player.win(player.hand_value)
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
          system("say The dealer got #{dealer.hand_value}. He totally busted bro!! Sick!!")
          player.win(player.hand_value)
        elsif dealer.hand_value >= player.hand_value
          puts "You have #{player.hand_value} but the dealer has #{dealer.hand_value}."
          player.lose
        elsif player.hand_value > dealer.hand_value
          puts "The dealer has #{dealer.hand_value}."
          player.win(player.hand_value)
        end
      end
      # puts "DEBUG: deal: #{deal.inspect}"
    end
    puts "Wanna play again my best in bro? y/n :"
    system('say Wanna play again my best in bro?')
    answer = gets.chomp.downcase
  end
end
puts "Whatever bra..."
system('say Whatever bra')





















########################### Code to create unicode graphics, should I desire........ ###################################

# puts "\u2554" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2557"



