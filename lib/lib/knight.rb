class Knight < Piece
	include CoordsDifference

	def move?(dst_x, dst_y)
		coord_x, coord_y = calculateCooord(dst_x, dst_y)

		(coord_x == 2 && coord_y == 1) || (coord_x == 1 && coord_y == 2)
	end
end