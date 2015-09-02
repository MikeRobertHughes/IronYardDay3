require 'pry'

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
