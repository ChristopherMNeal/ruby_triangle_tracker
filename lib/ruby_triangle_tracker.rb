require("pry")

class Triangle_Checker
  def initialize(side1, side2, side3)
    @side1 = side1.to_i
    @side2 = side2.to_i
    @side3 = side3.to_i
    @type = ""
  end

  def triangle_checker()
    if @side1 + @side2 <= @side3 || @side3 + @side2 <= @side1 || @side1 + @side3 <= @side2
      @type = "not a triangle"
    elsif @side1 == @side2 && @side1 == @side3
      @type = "Equilateral"
    elsif @side1 != @side2 && @side1 != @side3 && @side3 != @side2
      @type = "Scalene"
    else
      @type = "Isosceles"
    end
  end
end