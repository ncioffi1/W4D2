require_relative "Piece.rb"
require_relative "stepable.rb"

class Knight < Piece
    include stepable
end