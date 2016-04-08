module CoordsDifference
  def calculateCooord(dst_x, dst_y, options = {})
    coord_x = dst_x - @pos_x
    coord_y = dst_y - @pos_y

    unless options[:signed]
      coord_x = coord_x.abs
      coord_y = coord_y.abs
    end

    return coord_x, coord_y
  end
end