class Player
  attr_accessor :name, :symbol

  def initialize name, symbol
    @name = name
    @symbol = symbol
  end

end


p maya = Player.new("maya", "X")

p dan = Player.new("dan", "O")