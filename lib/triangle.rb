class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b 
    @c = c
  end
  
  def kind 
    
  end 
  
  def valid_triangle
    triangle = [(a + b > c), (a + c > b), (b + c > a)]
  end 
  
  class TriangleError < StandardError
  end 

end
