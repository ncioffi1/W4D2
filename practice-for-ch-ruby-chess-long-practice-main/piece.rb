

class Piece

    attr_reader :color
    def initialize(color, board, pos, symbol)
        @color = color
        @board = board
        @pos = pos
        @symbol = symbol   # :K, :Q, :R, 
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