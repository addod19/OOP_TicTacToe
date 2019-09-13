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
    unless user_input.is_a?(Integer) && ((user_input <= 9) && user_input.positive?) && !@@options.include?(user_input)
      puts 'Wrong Input, Enter 1..9'
      return false

    end
    true
  end

  def board_full?
    return false if board.grid.any? { |cell| cell.is_a?(Integer) }

    true
  end

  def game_play
    @board.display

    
    play1_id = 'X'

    play2_id = 'O'

    a = 0
    until board_full?
      @board.display
      option = 0

      current_player = a.even? ? play1_id : play2_id

      loop do
        puts " #{current_player} , select an option from 1..9"
        option = gets.chomp.to_i

        break if valid_move? option
      end

      char = (a.even? ? play1_id : play2_id).to_s
      @board.grid[option - 1] = char if @board.grid.include? option

      @@Wins = @@Wins.each do |moves|
        moves[moves.find_index(option)] = char if moves.include? option

        next unless Set.new(moves).length == 1

        puts 'Game Over!'
        puts " #{current_player} Wins!"
        board.display
        return
      end
      @@options.push(option)
      a += 1
    end
    board.display
    puts 'Board Full'
    puts 'Its a tie (DRAW)'
  end
end

my_game = GameLogic.new('X', 'O', 'BOARD')

p my_game.valid_move? 5
p my_game.valid_move? 10
