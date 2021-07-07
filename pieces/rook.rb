require_relative "piece"
require_relative "modules/slideable"

class Rook < Piece

    include Slideable

    def symbol
        "♜"
    end

    def move_dirs
       horizontal_and_vertical_dirs 
    end
end

