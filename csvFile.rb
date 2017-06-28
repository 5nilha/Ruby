require 'csv'


CSV.open("author_info2.csv", "wb") do |csv|
  csv << ["row", "of", "csv", "data"]
  csv << ["another", "row"]
end