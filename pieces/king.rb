require_relative "piece"
require_relative "modules/stepable"

class King < Piece

    include Stepable
    
    def symbol
        "♚"
    end

    def move_diff

    end
end