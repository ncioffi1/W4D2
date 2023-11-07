require_relative "Piece.rb"
require_relative "slideable.rb"

class Queen < Piece
    include slideable
end