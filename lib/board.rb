class Board
    attr_accessor :grid

    def initialize
        @grid = [1,2,3,4,5,6,7,8,9]
    end
    def display
        puts "|Welcome to TIC TAC TOE|"
        puts " #{grid[0]}|#{grid[1]}|#{grid[2]}"
        puts " #{grid[3]}|#{grid[4]}|#{grid[5]}"
        puts " #{grid[6]}|#{grid[7]}|#{grid[8]}"
    end
end 


board = Board.new 
p board.display


