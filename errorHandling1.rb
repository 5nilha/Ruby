begin 
  puts 8 / 0 
rescue StandardError => e    #StandardError will describe any kind of error that occur
  puts "Error Occurred: #{e}"
end