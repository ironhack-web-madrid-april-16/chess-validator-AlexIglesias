module StraightMover
  def straight_move?(coord_x, coord_y)
    (coord_x == 0 && coord_y != 0) || (coord_y == 0 && coord_x != 0)
  end
end