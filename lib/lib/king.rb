class King < Piece
	include CoordsDifference

	def move?(dst_x, dst_y)
		coord_x, coord_y = calculateCooord(dst_x, dst_y)

		(coord_x == 0 || coord_x == 1) && (coord_y == 0 || coord_y == 1)
	end
end