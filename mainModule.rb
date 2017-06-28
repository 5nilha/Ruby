require_relative "humanModule"
require_relative "smartModule"

module Animal
  def make_sound 
    puts "Grrrr"
  end
end



class Dog
  include Animal
end

buddie = Dog.new 
buddie.make_sound



class Scientist
  include Human
  prepend Smart  #if the module Smart contain any method similar to a method in Scientist class, it will overwrite the class method and use the module method instead.
  
  def act_smart
    return "E=mc^2"
  end
end

einstein = Scientist.new
einstein.name = "Albert"
einstein.run

puts einstein.name + " says " + einstein.act_smart
  