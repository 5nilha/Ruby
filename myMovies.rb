movies = {}
choice = " "

while (choice != "exit")

  puts "==================================================="
  puts "Add - to add a movie"
  puts "Delete - to delete a movie"
  puts "Update - to update a movie"
  puts "Display - to dysplay all movies"
  puts "Exit - to end the program"
  puts "==================================================="
  puts "Choose an option:"
  choice = gets.chomp
  choice.downcase! # convert the user input to lowercase

  case choice 
  when "add"
    puts ""
    puts "Enter a movie title you want to add:"
    title = gets.chomp
    puts "Give review stars for this movie (1 - poor to 5 - best): "
    rating = gets.chomp  
    
    if (movies[title.to_sym] == nil)
      movies[title.to_sym] = rating.to_i  #insert the title converted to symbol to the hash movies and add its value rating conveted to integer
      puts "added"
    else 
      puts "The Movie already exist."
    end
    
    puts "" 
 
  when "update"
    puts "Which movie do you want to update? Enter the movie's title: "
    title = gets.chomp
    
    if movies[title.to_sym] == nil
      puts "The movie does not exist"
    else 
      puts "Update the movie's rating (1 - poor to 5 - best):"
      rating = gets.chomp
      movies[title.to_sym] = rating
      puts "Updated"
    end
    
  when "display"
    puts ""
    puts "Movies:"
    movies.each {|movie, rating | puts "* #{movie}  - #{rating} star(s)"}
    puts ""
    
  when "delete"
    puts "Which movie do you want to delete? Enter the movie's name: "
    title = gets.chomp
    
    if movies[title.to_sym] == nil
      puts "The movie does not exist"
    else 
      movies.delete(title.to_sym)
      puts "Deleted!"
    end
    
  when "exit"
    break
    
  else
    puts "Error. The option doe not exist"
  end

end

