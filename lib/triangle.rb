class Triangle
  
  
def initialize(side_one, side_two, side_three)
  @side_one = side_one
  @side_two = side_two
  @side_three = side_three
end
  
def kind
  if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
    begin
    raise TriangleError
    rescue TriangleError => error
      puts error.message
    end
  end
  
  
end

class TriangleError < StandardError
  def message
    "Pythagoras is angry that you don't understand triangles."
  end
  
  
end




