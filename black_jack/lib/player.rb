require 'pry'

class Player

  attr_reader :hand

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

  def show_hand
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

  def win(winning_total)
    puts "You totes got #{winning_total} broseph! SIIIIIIIICK!!!!"
    system("say You totes got #{winning_total} broseph! siiiick!!")
    puts "Oh yeah brah! You just won hella skrill! Buy me a Natty Ice NOW!!! Woo!"
    system('say Oh yeah brah! You just won hella skrill! Buy me a Natty Ice now!!! Woo!')
  end

  def lose
    puts "U mad bro?"
    system('say U mad bro?')
    system('sleep 1')
    puts "Bum luck duder..it looks like you lost. Let's go get a PBR..."
    puts "and play some gamecube."
    system('say Bum luck duder. It looks like you lost. Lets go get a PBR')
    system('say and play some gamecube')
  end
end
