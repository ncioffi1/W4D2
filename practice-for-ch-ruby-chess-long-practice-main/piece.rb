require_relative "pieces/bishop.rb"
require_relative "pieces/king.rb"
require_relative "pieces/knight.rb"
require_relative "pieces/pawn.rb"
require_relative "pieces/queen.rb"
require_relative "pieces/rook.rb"


class Piece

    attr_reader :color
    def initialize(color, board, pos)
        @color = color
        @board = board
        @pos = pos
        # @symbol = symbol   # :K, :Q, :R, 
    end

    def to_s
        
    end

    def empty?
        # if @symbol == nil
        #     return true
        # else
        #     return false
        # end
    end


    def moves

    end


    def valid_moves


    end

    def pos=(val)
    end

    def symbol
        # :K = Knight.new(nsam)
    end

    def move_into_check?(end_pos)
        
    end

end