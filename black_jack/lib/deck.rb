require 'pry'

class Deck

  attr_accessor :deck

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
