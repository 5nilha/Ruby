#inventory Class

class Item
  attr_accessor :description, :price, :sizes #creates the getter and setter
  attr_reader :id  #Creates only the Getter
  # attr_writer :description   # Creates only the setter
  
  # @@last_id = 101
  @@use_ids = []
  
  def initialize (description, price)
    @@store = "Fabio's Store"  # @@ to class variable
    # @id = @@last_id
   #  @@last_id += 1
    @id = rand_id
    @description = description
    @price = price
    @sizes = []
  end
  
#-------------- PRIVATE METHODS-------------------
  private
  def rand_id   # Generates an random ID to the item
    rand_id = rand(100..999)
    
    while @@use_ids.include?(rand_id)
      rand_id = rand (100..999)
    end
    @@use_ids << rand_id
    return rand_id
  end
  
#-------------- PUBLIC METHODS-------------------
  public  
  
  def use_id
    return @@use_ids
  end
  
  def store=(store)
    @@store = store.to_s
  end
  
  def store
    return @@store
  end
  
  def add_size= (size)  # Size Setter. Add the item size to the array
    @sizes << size
  end
  
  def remove_size ( size )  # Remove the item size from the array
    @sizes.delete( size )
  end
      
  def to_s   #print out the object information. Overrides the methos to_s
   if @sizes.empty?
     size_availability = "Out of Order"
   else 
     size_availability = @sizes.join(", ")
   end
    
    return "#{@id}\t #{@description}\t #{@price}\t Sizes Available: " + size_availability #converting the array to a string separated with comma.
  end
end



shirt = Item.new("Shirt", 19.99)
pants = Item.new("Pants", 29.50)
shoes = Item.new("Nike", 29.99)
socks = Item.new("Socks", 4.99)
shirt.add_size = "Large"
shirt.add_size = "Small"
shirt.add_size = 40
shirt.add_size = 32

puts ""
puts shirt
puts pants
puts shoes
puts socks
puts ""


shirt.remove_size("Large")
puts shirt
puts shirt.description
puts shirt.price

# changing values
shirt.description = "Soccer Jersey"
shirt.price = 30.99
puts shirt.description
puts shirt.price
puts shirt
shirt.store = "Angel's"
puts shirt.store

shirt.sizes.each do |size|
  puts size
end


print "\n\n"


puts pants
puts pants.store
p shirt.use_id
p socks.use_id
