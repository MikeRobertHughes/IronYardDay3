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
