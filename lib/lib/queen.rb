class Queen < Piece
	include CoordsDifference
	include DiagonalMover
	include StraightMover

	def move?(dst_x, dst_y)
		coord_x, coord_y = calculateCooord(dst_x, dst_y)

		diagonal_move?(coord_x, coord_y) ||
		straight_move?(coord_x, coord_y)
	end
end