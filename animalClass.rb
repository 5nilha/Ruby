class Animal 
  attr_accessor :name
  
	def initialize
		puts "Creating a New Animal"
  end
  
  def set_name (new_name)
    if new_name.is_a?(Numeric)
      puts "Name cannot be a number"
    else 
      @name = new_name
    end
  end
  
  def get_name
    return @name
  end
  
  def name (name)
    set_name(name)
  end
  
  def name
    return @name
  end

end

cat = Animal.new
cat.set_name("Biduu")

puts cat.get_name



class Dog < Animal
  attr_accessor :height, :weight
  
  def bark
    return "Generic Bark"
  end
end

buddie = Dog.new
buddie.name = "Buddie"
puts buddie.get_name

  

class GermanShepard < Dog
  def bark
    return "Loud Bark"
  end
end

dexter = GermanShepard.new
dexter.name = "Dexter"
puts dexter.name

printf "%s goes %s \n", dexter.name, dexter.bark()