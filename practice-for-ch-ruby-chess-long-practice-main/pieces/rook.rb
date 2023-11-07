require_relative "Piece.rb"
require_relative "slideable.rb"

class Rook < Piece
    include slideable
end