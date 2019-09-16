require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/board'

puts "Welcome to Tic Tac Toe Game"

puts "This game is played by 2 players, player1 uses 'X' and player2 uses 'O'"

puts "Enter name for player 1"
player1 = gets.strip.capitalize
player1_id = "X"

puts "Enter name for player 2"
player2 = gets.strip.capitalize
player2_id = "O"

board = Board.new

Game.new(player1, player2, board).

puts "Would like to play again? [y/ n]"





