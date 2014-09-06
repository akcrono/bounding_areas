require_relative 'bounding_box'

class BoundingBox
  attr_reader :left, :bottom, :height, :width

  def initialize(left, bottom, width, height)
    @left = left
    @bottom = bottom
    @height = height
    @width = width
  end

  def right
    left + width
  end

  def top
    bottom + height
  end

  def contains_point?(x_coord, y_coord)
    if x_coord.between?(left, right) && y_coord.between?(bottom, top)
      return true
    end
    false
  end
end
