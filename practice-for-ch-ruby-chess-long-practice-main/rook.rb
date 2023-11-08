require_relative "piece.rb"
require_relative "slideable.rb"

class Rook < Piece
    include Slideable

    def symbol
        '♖'.colorize(color)
        # '♖'.colorize(color)
    end

    def move_dirs
        horizontal_and_vertical_dirs
    end
end