require_relative "piece.rb"
class Pawn < Piece
    def symbol
        '♙'
    end
    
    def at_start_row?
        if self.color == "black" && self.pos[0] == 1
            return true
        elsif self.color == "white" && self.pos[0] == 6
            return true
        end
        return false
    end

    def moves
        moves_arr = []


    end

    def forward_dir
        if self.color == "black"
            return 1
        else
            return -1
        end
    end

    def forward_steps
        moves_arr = []

        if at_start_row?
            
        end
    end

    def side_attacks
        moves_arr = []
    end
    

end