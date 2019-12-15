class Triangle

  attr_reader :a, :b, :c 

  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c
  end
  
  def kind 
    valid_triangle
    if a == b || b == c || c == a 
      :isoceles
    elsif a == b && b == c 
      :equilateral
    else 
      :scalene
    end 
  end 
  
  def valid_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a,b,c].each do |side|
      triangle << false if side <= 0
      raise TriangleError if triangle.include?(false)
    end 
  end 
  
  class TriangleError < StandardError
  end 

end
