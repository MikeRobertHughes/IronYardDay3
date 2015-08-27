
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
    # x = hand_size.to_i
    # @hand_string = ""
    # while x >= 0
    #   @hand_string += @hand[x].get_value + ", "
    #   x -= 1
    # end
    # return
    @hand
  end

  def hand_value
    x = @hand.size - 1
    @total_value = 0
    while x >= 0
      if @hand[x].get_value.is_a?(Fixnum)
        @total_value += @hand[x].get_value
      else
        @total_value += 10
      end
      x -= 1
    end
    return @total_value
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
  puts "************* Ready Player One *************"
  player.accept_card(deck.deal_card)
  player.accept_card(deck.deal_card)
  puts "You have been dealt #{player.hand_size} cards."
  puts "You have a #{player.hand[0]} and a #{player.hand[1]} for a total of #{player.hand_value}."
  puts "Would you like to (S)tay or (H)it?"
  deal = gets.chomp.downcase
  if deal == "h" || deal == "hit"
    player.accept_card(deck.deal_card)
    puts "You now have a #{player.hand[2]} for a total of #{player.hand_value}."
  elsif deal == "s" || deal == "stay"
    puts "The dealer is now playing"
    puts "The dealer has a "
  else
    puts "That's not an option smartass, good bye..."
  end

else
  puts "Whatever..."
end






















########################### Code to create unicode graphics, should I desire........ ###################################

# puts "\u2554" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2550" + "\u2557"



