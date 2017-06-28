#Hashes and Symbols

movie_ratings = {
  ocean_eleven: 3.2,
  primer: 3.5,
  memento: 3,
  matrix: 5,
  red_dawn: 1.5,
  uhf: 1,
  alex_cross: 2,
  sky_fall: 4,
  lion_king: 3.5
}

good_movies = movie_ratings.select do |movie, rating| 
   rating > 3 
end

puts "=============Good Movie Ratings=============="
good_movies.each {|movie, rating| puts "Movie: #{movie} -> rating: #{rating}"}

puts ""
puts "All Movies List:"

#each_key iterate over keys, as each_value iterate over values
movie_ratings.each_key {|key| puts "* #{key}"}