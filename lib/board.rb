class Board
  
    def initialize(boardsize)
        @grid = Array.new(boardsize) {Array.new(boardsize, :N)}
        @size = boardsize * boardsize
    end
end
