# frozen_string_literal: true

require 'set'

class Game
  @wins = [[1, 2, 3], [1, 4, 7], [1, 5, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [4, 5, 6], [7, 8, 9]]
  @@options = []

  def initialize(player1, player2, board)
    @player1 = player1
    @player2 = player2
    @board = board
  end

  def game_start
    a = 0

    until board_full?
      @board.display
      option = 0

      current_player = a.even? ? @player1 : @player2

      loop do
        puts " #{current_player}, select an option from 1..9"
        option = gets.chomp.to_i

        break if valid_move?(option)
      end

      char = (a.even? ? 'X' : 'O').to_s
      @board.grid[option - 1] = char if @board.grid.include?(option)

      @wins = @wins.each do |moves|
        moves[moves.find_index(option)] = char if moves.include?(option)
        next unless Set.new(moves).empty?

        puts "Game Over, #{current_player} wins!"
        board.display
        return
      end
      @@options.push(option)
      a += 1
    end
    puts 'Board FUll, the Game is a tie (draw)'
  end

  def board_full?
    return false if @board.grid.any? { |cell| cell.is_a?(Integer) }

    true
  end

  def valid_move?(user_input)
    unless user_input.is_a?(Integer) && ((user_input <= 9) && user_input.positive?) && !@@options.include?(user_input)
      puts 'Wrong Input, Enter 1..9'
      return false

    end
    true
  end
end
