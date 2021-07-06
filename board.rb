require_relative 'pieces'
require 'byebug'

class Board

    attr_accessor :board
    
    def initialize
        @board = Array.new(8) {Array.new(8, NullPiece.instance)}
        populate
        # fill_board
    end

    def fill_board
        board.each_with_index do |row, i|
            row.each_with_index do |el, j|
                set_back_row(i,:black) if i == 0
                set_pawns(i,:black) if i == 1
                
                @board[i][j] = null_piece if (2..5).to_a.include?(i)  

                set_pawns(i,:white) if i == 6
                set_back_row(i,:white) if i == 7  
            end
        end
    end

    def set_back_row(row,color)
        (0..7).each do |j|
            if [0,7].include?(j) 
                @board[row][j] = Rook.new(color, self, [row,j])
            elsif [1,6].include?(j)
                @board[row][j] = Knight.new(color, self, [row,j])
            elsif [2,5].include?(j)
                @board[row][j] = Bishop.new(color, self, [row,j])
            elsif j == 3
                @board[row][j] = Queen.new(color, self, [row,j])
            elsif j == 4
                @board[row][j] = King.new(color, self, [row,j])
            end
        end
    end

    def set_pawns(row,color)
        (0..7).each do |j|
            @board[row][j] = Pawn.new(color, self, [row,j])
        end
    end
    
    def populate
        back_rows = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]
        
        back_rows.each_with_index do |back_row_piece, idx|
            @board[0][idx] = back_row_piece.new(:black, self, [0,idx])
            @board[7][idx] = back_row_piece.new(:white, self, [7,idx])
        end

        8.times { |col| @board[1][col] = Pawn.new(:black, self, [1, col]) }
        8.times { |col| @board[6][col] = Pawn.new(:white, self, [6, col]) }

    end

    
    def [](pos)
        row, col = pos
        @board[row][col]
    end
    
    def []=(pos,val)
        row, col = pos
        @board[row][col] = val
    end

    
    def move_piece(color, start_pos, end_pos)
        raise 'no piece to move at start position' if self[start_pos].class == NullPiece
        raise 'position is not valid' if !valid_pos?(end_pos)
        raise 'cannot move other players piece' if self[start_pos].color != color
        raise 'cannot move on your own piece' if self[end_pos].color == color
        # maybe check color for valid move

        #update
        self[start_pos].pos = end_pos #reassigning the position of the instance
        self[end_pos] = self[start_pos] #moving the position on the board
        self[start_pos] = NullPiece.instance #creating nullpiece instance in new empty space
    end 

    def valid_pos?(pos)
        # row,col = pos
        # row.between?(0,7) && col.between?(0,7)

        # row, col = pos 
        # (0..7).include?(row) && (0..7).include?(col)
    
        pos.all? { |coord| coord.between?(0, 7) }
    end
    
    def add_piece(piece, pos)

    end
        
    def checkmate?(color)
        
    end

    def in_check?(color)

    end
               
    def find_king(color)

    end

    def pieces

    end
    
    def dup

    end
    
    def move_piece!(color, start_pos, end_pos)
        
    end
    
end