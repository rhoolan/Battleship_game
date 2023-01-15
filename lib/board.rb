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

    def []=(position, value)
        row = position[0]
        colum = position[1]

        @grid[row][colum] = value
    end
end
