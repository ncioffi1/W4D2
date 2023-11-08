module Slideable

    HORIZONTAL_AND_VERTICAL_DIRS = [
        [0, -1], 
        [0, 1], 
        [-1, 0],
        [1, 0] 
      ].freeze

      DIAGONAL_DIRS = [
        [-1, 1],
        [-1, -1], 
        [1, 1],
        [1, -1] 
      ].freeze
    
    
      def horizontal_and_vertical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
      end
    
      def diagonal_dirs
       DIAGONAL_DIRS
      end
    
     
      def moves
      
        moves_arr = []
        dirs = move_dirs

        dirs.each do |dir|
            moves_arr << grow_unblocked_moves_in_dir(dir)
        end
        return moves_arr

      end
    
      private
    
      def move_dirs
        raise NotImplementedError
      end
    
     
      def grow_unblocked_moves_in_dir(dx, dy)
   
        possible_moves = []

        current_pos = self.pos
    
        while self.board.valid_pos?(current_pos)

            current_pos[0] += dx
            current_pos[1] += dy

            if self.board.valid_pos?(current_pos)
                possible_moves << current_pos
            elsif self.board.valid_idx?(current_pos)
                if self.board[current_pos].color == self.color
                    break
                else
                    possible_moves << current_pos
                    break
                end
            end
            
        end
        possible_moves
      
    end

end
