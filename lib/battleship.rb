require_relative "board"
require_relative "player"

class Battleship
    attr_reader :board, :player
    
    def initialize(length)
        @player = Player.new
        @board = Board.new(length)
        @remaining_misses = (length*length) / 2
    end
end
