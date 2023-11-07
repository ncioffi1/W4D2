require_relative "piece.rb"
require_relative "stepable.rb"

class King < Piece
    include stepable
end