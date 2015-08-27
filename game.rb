require 'pry'
class Card

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

  def get_value
    @value
  end

  def to_s
    "#{@value} of #{@suit}"
  end
end

class Deck

  def initialize
    @deck = []
    suits = [:hearts, :diamonds, :spades, :clubs]

    suits.each do |suit|
      (2..10).each do |value|
        @deck.push(Card.new(suit, value))
      end
      @deck.push(Card.new(suit, "J"))
      @deck.push(Card.new(suit, "Q"))
      @deck.push(Card.new(suit, "K"))
      @deck.push(Card.new(suit, "A"))
    end
  end

  def get_card
    @deck
  end

  def deal_card
    @deck.pop
  end

  def length
    @deck.length
  end

  def shuffle
    @deck.shuffle!
  end
end

class Player
  def initialize
    @hand = []
    @total_value = 0
  end

  def accept_card(card)
    @hand.push(card)
  end

  def hand_size
    x = @hand.size
    "#{x}"
  end

  def hand
    # x = @hand.hand_size.to_i
    # @hand_string = ""
    # while x >= 0
    #   @hand_string += @hand[x].get_value + ", "
    #   x -= 1
    # end
    # return @hand_string
    # @hand
    # binding.pry
    @hand.join(", ")
  end

  def hand_value
    x = @hand.size - 1
    @total_value = 0
    while x >= 0
      if @hand[x].get_value.is_a?(Fixnum)
        @total_value += @hand[x].get_value
      elsif @hand[x].get_value == "A"
        @total_value += 11
      else
        @total_value += 10
      end
      x -= 1
    end
    @total_value
  end
end

puts "Hello, would you like to play black jack?"

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
  puts "The dealer is showing a #{dealer.hand}."
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



