class Board
    attr_accessor :grid

    def initialize
        @grid = [1,2,3,4,5,6,7,8,9]
    end
    def display
        print "/t|-------------|"
        print "/t|Welcome to TIC TAC TOE|"
        print "/t|------------|"
        print "/t #{grid[0]}|#{grid[1]}|#{grid[2]}"
        print "/t |------|----------|"
        print "/t #{grid[3]}|#{grid[4]}| #{grid[5]}"
        print "/t |------|----------|"
        print "/t #{grid[6]}| #{grid[7]}| #{grid[8]}"
        print "/t |------|----------|"
    end
end 


board = Board.new 
p board.display


