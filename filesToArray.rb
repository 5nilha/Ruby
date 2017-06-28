#Reading a file into an array

states = []
states = File.open("states2.txt").readlines

states.each { |state| state.gsub!(/\n/, "")}

p states