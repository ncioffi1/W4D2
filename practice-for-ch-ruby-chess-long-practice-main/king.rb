require_relative "piece.rb"
require_relative "stepable.rb"

class King < Piece
    include Stepable
    def symbol
        '♔'
    end

    def move_dirs
        king_moves
    end
    
end