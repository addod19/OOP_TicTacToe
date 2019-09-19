class Board
    MARKER = '@ '
  
    def initialize
      @grid = (0..8).each_with_object({}) { |n, grid| grid[n] = MARKER }
    end
  
    def display
      "
      |          |
      #{@grid[0]} | #{@grid[1]} | #{@grid[2]}
      -----------
      |          |
      #{@grid[3]} | #{@grid[4]} | #{@grid[5]}
      -----------
      |          |
      #{@grid[6]} | #{@grid[7]} | #{@grid[8]}
  
      "
    end
  
    def place_marker(position, marker)
      @grid[position - 1] = marker
    end
  
    def valid_selection?(position)
      @grid[position - 1] == MARKER
    end
  
    def winning_lines
      markers = @grid.values
      [
        markers.each_slice(3).to_a,
        markers.each_slice(3).to_a.transpose,
        [[markers[0], markers[4], markers[8]],
         [markers[2], markers[4], markers[6]]]
      ].flatten(1)
    end
  
    def winner?
      winning_lines.any? { |line| line.all?('X') || line.all?('O') }
    end
  
    def draw?
      !winner? && @grid.values.none?(MARKER)
    end
  end