require 'set'

class GameLogic
  @@Wins = [ [1,2,3],[4,5,6],[7,8,9],[1,4,7],[2,5,8],[3,6,9],[1,5,9],[3,5,7] ]
  @@options = []

  def initialize p_1,p_2,board
    @p_1 = p_1
    @p_2 = p_2
    @board = board

  end


end

p GameLogic.new('X','O', 'BOARD')