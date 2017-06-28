file = File.new("authors.csv", "w") #Creates a new file with a command to write

file.puts "William Shakespeare"  # prints to the file
file.puts "Agatha Christie"
file.puts "Barbara Cartland"

file.close # close the file

puts File.read("authors.csv") # reads from the file

file = File.new("authors.csv","a")   # Updates the file
file.puts "Danielle Steel"
file.close

puts File.read("authors.csv")