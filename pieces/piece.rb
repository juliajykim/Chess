require 'byebug'
class Piece
    attr_accessor :pos ,:color, :board

    def initialize (color, board, pos)
        @color = color 
        @board = board
        @pos = pos
    end
    
    def to_s

    end

    def empty?

    end

    def valid_moves

    end

    def pos=(val)

    end

    def symbol
        
    end

    def inspect
        # "#<#{self.class}, pos: #{pos}, color: #{color}>"
        symbol
        # "hi"
    end

    private

    def move_into_check?(end_pos)

    end
end