class Triangle
  
  
def initialize(side_one, side_two, side_three)
  @side_one = side_one
  @side_two = side_two
  @side_three = side_three
end
  
def kind
  if @side_one <= 0 || @side_two <= 0 || @side_three <= 0
    raise TriangleError
end

class TriangleError < StandardError
  
  
  
end


class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person
      begin
      raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    else
      person.partner = self
    end
  end
  
  class PartnerError < StandardError
    def message
      "you must give the get_married method an"
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




