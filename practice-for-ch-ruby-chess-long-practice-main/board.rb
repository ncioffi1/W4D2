class Board 

    def initialize
        @rows = Array.new(8) {Array.new(8)} 
        # @null_piece = 
    end

    def [](pos)
        x, y = pos
        @rows[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @rows[x][y] = val
    end

    def move_piece(color, start_pos, end_pos)
        if valid_pos?(self[end_pos])
            piece = self[start_pos] 
            self[end_pos] = piece
            self[start_pos] = nil
        end
    end

    def valid_pos?(pos)
        x, y = pos
        if x >= 0 && x <= 7 && y >= 0 && y <= 7
            if self[pos].empty?
                return true
            end
        end
        return false
    end

    def add_piece(piece, pos)
    end

    def checkmate?(color)
    end

    def in_check?(color)
    end

    def find_king(color)
    end

    def pieces
    end

    def dup
    end

    def move_piece!(color, start_pos, end_pos)
    end

end