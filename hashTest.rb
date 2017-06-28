class Person
  attr_accessor :name, :id, :address
  
   def initialize (name, id, address)
     @name = name
     @id = id
     @address = address
   end
end

student1 = Person.new("Ricardo Quintanilha", "V09876543", "762 nwe road pkwy")

student2 = Person.new("Fabio Quintanilha", "v12345678", "01 New Independence")


student1.instance_variables.each {|var| hash [var.to_s.delete("@")] = student1.instance_variable_get(var)}

student2.instance_variables.each {|var| hash [var.to_s.delete("@")] = student2.instance_variable_get(var)}

p hash
