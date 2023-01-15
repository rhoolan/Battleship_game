class Board
    attr_reader :size

    def initialize(boardsize)
        @grid = Array.new(boardsize) {Array.new(boardsize, :N)}
        @size = boardsize * boardsize
    end

    def [](position)
        row = position[0]
        column = position[1]

        @grid[row][column]
    end
end
