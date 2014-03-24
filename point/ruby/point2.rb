class Point
  def self.xy(x, y)
    new(x, y)
  end

  def self.polar(r, theta)
    xy(r * Math.cos(theta), r * Math.sin(theta))
  end

  private_class_method :new

  def initialize(x, y)
    @x = x
    @y = y
  end
end

Point.xy(3, 4)
Point.polar(5, 0.927295)
