require 'csv'

file = CSV.open("authors_info.csv", "w") do |line|
  line << ['AUTHORS', 'NACIONALITY', 'GENRE', 'BOOKS SOLD'] # Header line 
  line << ["Willian Shakespeare", "English", "Plays and Poetry", "4 Billion"]
  line << ["Agatha Christie", "English", "Suspense", "4 Billion"] #Second line
  line << ["Barbara Cartland", "English", "Romance", "1 Billion"] #Third line
  line << ["Danielle Steel", "English", "Romance", "800 Million"] #Fourth line
end

file.close

File.open("authors_info.csv") do |record|
  record.each do |item|
    name, lang, specialty, sales = item.chomp.split(',')
    puts"#{name}   "
  end
end
file.close


#          #{lang}              #{specialty}          #{sales}"

