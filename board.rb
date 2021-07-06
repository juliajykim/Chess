require_relative 'pieces'

class Board

    attr_reader :board
    
    def initialize
        @board = Array.new(8) {Array.new(8, NullPiece.instance)}
        self.populate
    end
    
    def populate
        # have an 8x8 empty array, subarrays
        # back row/ front row will have diff color, 

        # row 8 will be where kings live
        # row 1 will be other kings live
        # row 2 and row 7 , subarr = 1, 6 same but dif colors
        board.each_with_index do |rows, r|
            rows.each_with_index do |col, c|
                
            end
        end

        back_rows = [Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

        back_rows.each_with_index do |back_row_piece, idx|
            back_row_piece.new
        end


    end

#      0  1  2  3  4  5  6  7  
#    [[R, N, B, Q, K, B, N, R], 0
#     [P, P, P, P, P, P, P, P], 1
#     [_, _, _, _, _, _, _, _], 2 
#     [_, _, _, _, _, _, _, _], 3
#     [_, _, _, _, _, _, _, _], 4
#     [_, _, _, _, _, _, _, _], 5
#     [P, P, P, P, P, P, P, P], 6
#     [R, N, B, Q, K, B, N, R]] 7
    
    
    def [](pos)
        row, col = pos
        @board[row][col]
    end
    
    def []=(pos,val)
        row, col = pos
        @board[row][col] = val
    end

    
    def move_piece(color, start_pos, end_pos)
        
    def 

    def valid_pos?(pos)
        
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