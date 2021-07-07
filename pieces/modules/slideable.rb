module Slideable

    HORIZONTAL_AND_VERTICAL_DIRS = [
        [0,1],  #right 
        [0,-1], #left
        [1,0], #down 
        [-1,0] #up
    ].freeze

    DIAGONAL_DIRS = [
        [-1,1], #upright
        [-1,-1], #upleft
        [1,1], #downright
        [1,-1] #downleft
    ].freeze

    #getters
    def horizontal_and_vertical_dirs
        HORIZONTAL_AND_VERTICAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    #make emtpy [] shovel all poss moves when we found => return [moves pos]
    def moves
        moves = []
            move_dirs.each do |poss_move|
                dx, dy = poss_move
                moves += grow_unblocked_moves_in_dir(dx, dy)
            end
        moves
    end
    
    private

    def move_dirs
        # overwritten by subclass
        raise NeedToAddMovesForPiece
    end

    def grow_unblocked_moves_in_dir(dx, dy)
        # till out of the board
        # have enemy pices on the way
        # have my owne pice on the

        cur_x, cur_y = pos
        possible_moves = []
        moves_left = true
        
        while moves_left
          cur_x, cur_y = cur_x + dx, cur_y + dy
          pos = [cur_x, cur_y]

            if !board.valid_pos?(pos)
                # if position not valid
                moves_left = false
            elsif board[pos].empty?
                # if runs into null piece / empty spot
                possible_moves << pos
            else
                # can take an opponent's piece
                possible_moves << pos if board[pos].color != color
                # once we attack (above) the move will be over
                # break out of the loop
                # can't move past blocking piece
                moves_left = false
            end
        end
        possible_moves

    end
    
end