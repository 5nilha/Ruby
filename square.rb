#Classes

class Square 
  
  def initialize (side_length)
    @side_length = side_length
  end
  
  def set_length (side_length)
    @side_length = side_length
  end
  
  def get_length
    return @side_length
  end
  
  def area 
    return @side_length * 4
  end
  
  def to_s 
    "The Square has a length of #{@side_length} and area of #{self.area}."
  end
  
  def draw 
    draw_string = "*" * @side_length + "\n"   # prints the top side of the square
  
    (@side_length - 2).times do
     draw_string += "*" + (' ' * (@side_length - 2)) + "*\n"
    end
   
    draw_string += "*" * @side_length # prints the bottom side of the square
    
    return draw_string
  end
end

mySquare = Square.new(20)
puts mySquare   #because of the method to_s in the class Square we can print the string without call the method 
puts mySquare.draw