module Slideable

    HORIZONTAL_DIRS = [
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
    def horizontal_dirs
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end

    #make emtpy [] shovel all poss moves when we found => return [moves pos]
    def moves
        
    end
    
    private

    def move_dirs
        # overwritten by subclass
    end

    def grow_unblocked_moves_in_dir(dx, dy)

    end
    
end