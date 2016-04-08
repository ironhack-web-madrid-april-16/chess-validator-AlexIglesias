class BlackPawn < Piece
	include CoordsDifference

	def move?(dst_x, dst_y)
		coord_x, coord_y = calculateCooord(dst_x, dst_y, signed: true)

		(@pos_y == 6) && (coord_x == 0 && (coord_y == -2 || coord_y == -1)) ||
		(@pos_y != 6) && (coord_x == 0 && coord_y == -1)
	end
end