# frozen_string_literal: true

class Board
  attr_accessor :grid

  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    puts '       | Welcome to TIC TAC TOE GAME |'
    puts ''
    puts "Player1 uses the symbol 'X' and Player2 uses 'O', players take turns, a player cannot visit a cell already visited "
    puts 'A Player wins if he place the Symbol in the order  => [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]'
    puts ''
    puts "             #{grid[0]}  |    #{grid[1]}  |  #{grid[2]}"
    puts '            ----- ----- -----'
    puts "             #{grid[3]}  |    #{grid[4]}  |  #{grid[5]}"
    puts '            ----- ----- -----'
    puts "             #{grid[6]}  |    #{grid[7]}  |  #{grid[8]}"
  end
end

board = Board.new
p board.display
