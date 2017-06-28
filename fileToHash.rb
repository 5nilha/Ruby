states_file = File.open("states.txt")

states = {}

while !(states_file.eof?)
  line = states_file.gets.chomp.strip
  data = line.split("=>")
  states[data[1].gsub(",", "").gsub("'", "").strip] = data[0].gsub("'", "").strip
end

p states["Florida"]