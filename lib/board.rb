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

    def num_ships
        ship_count = 0

        @grid.each do |sub_array|
            sub_array.each do |value|
                ship_count += 1 if value == :S
            end
        end

        ship_count
    end

    #part 2

    def attack(position)
        if self[position] == :S
            self[position]= :H
            puts "You sunk my battleship!"
            return true
        elsif self[position] != :S
            self[position]= :X
            return false
        end
    end
end
