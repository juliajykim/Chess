module Stepable

    def moves
        possible_moves = []
        move_diffs.each do |dx, dy|
                            # ^destructuring possible moves
            cur_x, cur_y = pos
            # looking at current pos
            future_pos = [cur_x + dx, cur_y + dy]
            # adds dx dy from possible moves to find new possible positions

            if board.valid_pos?(future_pos)
                # make sure the move is valid
                if board[future_pos].empty?
                    # if nullpiece then can step there
                    possible_moves << future_pos
                elsif board[future_pos].color != color
                    # if space has other players color, can attack
                    possible_moves << pos
                end
            end

        end
        possible_moves
    end

    def move_diff
        #overwritten by subclass 
        raise NotImplementedError
    end
end