puts "welcome to tictactoe game"

puts "what kind of game would like to play?Please choose player-mode"

player_mode = gets.strip

if player_mode == "1"
  puts "Do you want to go first? [y/ n]"
  if gets.strip == "y"
    Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new).play
  else   Game.new(Players::Computer.new("X"), Players::Human.new("O"), Board.new).play
  end

elsif player_mode == "0"
  Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new).play

elsif player_mode == "2"
  Game.new(Players::Human.new("X"), Players::Human.new("O"), Board.new).play
end
puts "Would like to play again? [y/ n]"



game_start until gets.strip == "n"

