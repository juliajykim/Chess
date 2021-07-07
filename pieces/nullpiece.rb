require 'singleton'
require_relative "piece"
require "byebug"


class NullPiece < Piece

    include Singleton

    def initialize
        # self.instance
        # debugger
        @color = :none
    end

    def empty?
        true
    end

    def symbol
        "_"
    end

    def moves
        []
    end

end