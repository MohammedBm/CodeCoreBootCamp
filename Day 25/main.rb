
class Rectangle

  def initialize(width, length)
    @length  = length
    @width   = width
  end


  def area
    @length * @width
  end

  def is_square
    @width == @length
  end

end
