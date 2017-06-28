#Using user input as Object name
class Person
  attr_accessor :name, :id, :address
  
   def initialize (name, id, address)
     @name = name
     @id = id
     @address = address
   end
end

people = {}
answer = "y"
while (answer == "y")
  puts "Enter your Full name : "
  full_name = gets.chomp

  puts "Enter your ID : "
  id = gets.chomp

  puts "Enter your Address : "
  address = gets.chomp


  people[id] = Person.new(full_name, id, address)

  puts people[id].name
  puts people[id].id
  puts people[id].address
  
  puts "Want to enter another person? (y | n) "
  answer = gets.chomp.downcase 
  
end

i = 0
people.each_key  do |key| 
  
  puts "##{i + 1}  #{people[key].name.ljust(25)}\t #{people[key].id.ljust(15)}\t #{people[key].address}"
end


