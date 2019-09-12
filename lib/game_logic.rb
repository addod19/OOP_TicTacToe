# frozen_string_literal: true

require 'set'

class GameLogic
  @@Wins = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  @@options = []

  def initialize(play1, play2, board)
    @play1 = play1
    @play2 = play2
    @board = board
  end

  def valid_move?(user_input)
    unless user_input.is_a?(Integer) && ((user_input <= 9) && (user_input.positive?)) && !@@options.include?(user_input)
      puts 'Wrong Input, Enter 1..9'
      return false

    end
    true
  end

  def board_full?
    return false if board.grid.any? { |cell| cell.is_a?(Integer)}
    true 
  end

end

my_game = GameLogic.new('X', 'O', 'BOARD')

p my_game.valid_move? 5
p my_game.valid_move? 10


