class BoundingArea
  attr_reader :rectangles

  def initialize(rectangles)
    @rectangles = rectangles
  end

  def contains_point?(x_coord, y_coord)
    rectangles.each do |rectangle|
      return true if rectangle.contains_point?(x_coord, y_coord)
    end
    false
  end
end
