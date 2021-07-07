require_relative "piece"
require_relative "modules/stepable"

class King < Piece

    include Stepable
    
    def symbol
        "♚".colorize(color)
    end

    def move_diffs
        [
            [1,0], #right
            [1,1], #right down
            [1,-1], #right up
            [-1,1], #left down
            [-1,0], #left
            [-1,-1], #left up
            [0,1], #down
            [0,-1] #up
        ]
    end
end