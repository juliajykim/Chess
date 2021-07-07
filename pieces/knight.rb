require_relative "piece"
require_relative "modules/stepable"

class Knight < Piece

    include Stepable

    def symbol
        "♞"
    end

end