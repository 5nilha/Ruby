#Guess a number game

class Guess
  
  def guessNumber
    number = rand(100) + 1
  end 
end

number = Guess.new
numGuessed = number.guessNumber  

puts "Guess a Number:"
user_input = gets.chomp.to_i
 
  while user_input != numGuessed 
    
    unless user_input == numGuessed
      puts "Too low" if user_input < numGuessed
      puts "Too High" if user_input > numGuessed
    end
    
    puts ""
    puts "Guess a Number"
    user_input = gets.chomp.to_i
  end
  
  puts "You found it! The number is #{numGuessed}"
