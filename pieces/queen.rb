require_relative "piece"
require_relative "modules/slideable"

class Queen < Piece

  include Slideable

  def symbol
    "♛".colorize(color)  
  end

  def move_dirs
    horizontal_and_vertical_dirs += diagonal_dirs
  end

end