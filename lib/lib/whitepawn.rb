class WhitePawn < Piece
	include CoordsDifference

	def move?(dst_x, dst_y)
		coord_x, coord_y = calculateCooord(dst_x, dst_y, signed: true)

		(@pos_y == 1) && (coord_x == 0 && coord_y <= 2) ||
		(@pos_y != 1) && (coord_x == 0 && coord_y <= 1)
	end
end