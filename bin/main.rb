# frozen_string_literal: true

require_relative '../lib/game'
require_relative '../lib/player'


class Board
  attr_accessor :grid

  def initialize
    @grid = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    puts 'Welcome to Tic Tac Toe Game'
    puts 'This game is played by 2 players, each player will enter his/her name and choose a marker [X or O]'
    puts ''
    puts "#{grid[0]}|#{grid[1]}|#{grid[2]}"
    puts '----- ----- -----'
    puts "#{grid[3]}|#{grid[4]}|#{grid[5]}"
    puts '----- ----- -----'
    puts "#{grid[6]}|#{grid[7]}|#{grid[8]}"
  end
end

board = Board.new
p board.display


puts "Enter name for player 1"
player1 = gets.strip.capitalize
puts "Choose a marker [X or O]"
marker1 = gets.chomp.upcase


puts "Enter name for player 2"
player2 = gets.strip.capitalize


if marker1 == "X"
  puts "#{player1} goes with marker #{marker1}"
  puts "#{player2} goes with marker O"
elsif marker1 == "O"
  puts "#{player1} goes with marker #{marker1}"
  puts "#{player2} goes with marker X"
else
  puts "Enter the right marker!"
end


Game.new(player1, player2, board).game_start

puts "Would like to play again? [y/ n]"
