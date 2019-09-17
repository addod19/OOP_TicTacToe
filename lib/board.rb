# frozen_string_literal: true

class Board
  attr_accessor :grid

  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    puts '                       Welcome to Tic Tac Toe Game                  '

    puts '              This game is played by 2 players, each player will enter his/her name and choose a marker [X or O]'
    puts ''
    puts "                  #{grid[0]}  |    #{grid[1]}  |  #{grid[2]}"
    puts '                  ----- ----- -----'
    puts "                  #{grid[3]}  |    #{grid[4]}  |  #{grid[5]}"
    puts '                  ----- ----- -----'
    puts "                  #{grid[6]}  |    #{grid[7]}  |  #{grid[8]}"
  end
end

board = Board.new
p board.display
