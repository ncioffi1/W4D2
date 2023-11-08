require_relative "piece.rb"

class Board 

    attr_reader :rows

    def initialize
        @rows = Array.new(8) {Array.new(8)} 
        
    end

    def [](pos)
        x, y = pos
        @rows[x][y]
    end

    def []=(pos, val)
        x, y = pos
        @rows[x][y] = val
    end

    def setup_back_row
        back_row = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

        back_row.each_with_index do |class, i1|
            class.new()
                add_piece(Piece.new("white", self, pos), pos)
        end
    end

    def move_piece(color, start_pos, end_pos)
        if valid_pos?(end_pos)
            piece = self[start_pos] 
            self[end_pos] = piece
            self[start_pos] = nil
        end
    end

    def valid_pos?(pos)
        x, y = pos
        if x >= 0 && x <= 7 && y >= 0 && y <= 7
            if self[pos].nil?
                return true
            end
        end
        return false
    end

    def setup_board
        back_row = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

        (0...@rows.length).each do |y|
            (0...@rows.length).each do |x|
                pos = [x, y]
                back_row.each do |my_class|
                    if x == 0
                        add_piece(my_class.new("white", self, pos), pos)
                    elsif x == 7
                        add_piece(my_class.new("black", self, pos), pos)
                    end
                end
            
    
            end
        end

    end


    def add_piece(piece, pos)
        self[pos] = piece
    end

    def print_board
        @rows.each do |row|
            row.each do |ele|
                if ele == nil
                    print "_"
                else
                    print "P"
                end
            end
            print "\n"
        end
        return nil
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

# b = Board.new

# p b.rows