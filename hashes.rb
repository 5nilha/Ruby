# Hashes

# -------- Creating a Hash ------------
number_hash = {
  "PI" => 3.14,
  "Golden" => 1.618,
  "e" => 2.1718
}

superheroes = Hash["Clark Kent", "Superman", "Bruce Wayne", "Batman"] # another way to create a hash

samp_hash = Hash.new("No such key")  #Creates a Hash with a default key

superheroines = Hash["Lisa Morel", "Aquagirl", "Betty Kane", "Batgirl"]

# --------- Calling a value of the Hash --------

puts number_hash["PI"]  # Call the hash key to print its value.

p superheroes["Clark Kent"]

# -------- Adding key and value to the Hash ----------

superheroes["Barry Allen"] = "Flash"


superheroes.update(superheroines) # combines the two hashes. The update method will look for duplicate keys and if the already exist, it will update the key and keep only the newest one, destroying duplicates.

superheroes.merge(superheroines ) # combine the two hashes. Possible duplicating what already exist

superheroes.each do |key, value|   # Iterate element of the hash, printing the key and value to the screen
  puts key.to_s + " : " + value
end

puts "Contains Lisa Morel : " + superheroes.has_key?("Lisa Morel").to_s # Evaluates if the hash superheroes contains the key "Lisa Morel"
puts "Contains Batman : " + superheroes.has_value?("Batman").to_s  # Evaluates if the hash superheroes contains the value "Batman"
puts "Is superheroes Empty? " + superheroes.empty?.to_s # Evaluates if the has superheroes is empty, and print the result as true or false

superheroes.delete("Barry Allen")  # delete the element of the hash that contains the Key "Barry Allen"
puts "Size of the hash : " + superheroes.size.to_s
