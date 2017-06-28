#This class stroes an information about a person
class Person 
	attr_accessor :name, :age, :id
  
  #Create and initialize the person object. It stores the person name, age and id.
  def initialize (name, age, id)
    @name = name 
    @age = age
    @id = id
  end
  
  #print the person's information to te screen
  def print_person
    puts "Name: #{name}"
    puts "Age: #{age} years old"
    puts "ID: VCN#{id}"
  end
end


person_one = Person.new("Fabio", 33, 123456)
person_two = Person.new("Ricardo", 40, 78910)

person_one.print_person
person_two.print_person

puts "the firt person is older" if person_two.age < person_one.age
