class Board
	attr_reader :board
	def initialize
		@board =[[],[],[],[],[],[],[],[]]
	end

	def add_piece(x, y, piece)
		@board[x][y] = piece
	end

	def move?(x, y, dst_x, dst_y)
		if (dst_x >= 0) && (dst_x <= 7) && (dst_y >= 0) && (dst_y <= 7)
			if @board[dst_x][dst_y].nil?
				if @board[x][y].move?(dst_x, dst_y)
					puts "Legal Move"
				else
					puts "Ilegal Move"
				end
			elsif @board[dst_x][dst_y].color != @board[x][y].color
				puts "Congrats! Killed that piece!"
			else
				puts "Ilegal Movement. Position occupied"
			end
		else
			puts "Ilegal movement!! Out of the board."
		end
	end
end