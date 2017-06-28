states_file = File.open("states2.txt") #open the file  in reading mode and assign the file to states_file

states = []
while ! (states_file.eof?) # the method eof anlise is the end of the file (true or false)
  line = states_file.gets.chomp
  states << line  #pushes the content of the variable "line" into the array "states"

end

states_file.close #close the file

puts states.inspect
puts states.size

if states.include?("Puerto Rico") == false 
  states << "Puerto Rico"   #insert Puerto RIco into the Array states
end
p states.size


states_file = File.open("states2.txt", "w") #Open the file again in writing mode to save into it

states_file.puts states

states_file.close