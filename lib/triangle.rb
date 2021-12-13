class Triangle
  attr_reader :side1, :side2, :side3

  @@sides = {}

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    # @type = class.triangle_checker(side1, side2, side3)
  end

  def self.all
    @@sides.values()
  end
end

# Co-authored-by: Isaac Overstreet <isaacoverstreet3@gmail.com>