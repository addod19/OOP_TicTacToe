require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/board'

board = Board.new

puts "Enter name for player 1"
player1 = gets.strip.capitalize
puts "Choose a marker [X or O]"
marker1 = gets.chomp.upcase


puts "Enter name for player 2"
player2 = gets.strip.capitalize
puts "Choose a marker [X or O]"
marker2 = gets.chomp.upcase

if marker1 == "X" && marker2 == "O"
  puts "#{player1} goes with marker #{marker1}"
  puts "#{player2} goes with marker #{marker2}"
elsif marker1 == "O" && marker2 == "X"
  puts "#{player1} goes with marker #{marker1}"
  puts "#{player2} goes with marker #{marker2}"
else
  puts "Enter the right marker!"
end


Game.new(player1, player2, board).game_start

puts "Would like to play again? [y/ n]"







