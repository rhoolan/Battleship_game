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

    def lose?
        if @remaining_misses <= 0
            puts "you lose"
            return true 
        else
            return false 
        end
    end

    def win?
        if board.num_ships == 0
            puts "you win"
            return true 
        else 
            return false 
        end
    end
end
