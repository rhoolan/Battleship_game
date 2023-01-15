require_relative "board"
require_relative "player"

class Battleship
    attr_reader :board, :player

    def initialize(length)
        @player = Player.new
        @board = Board.new(length)
        @remaining_misses = (length*length) / 2
    end

    def start_game 
        board.place_random_ships
        print board.num_ships
        board.print
    end
end
