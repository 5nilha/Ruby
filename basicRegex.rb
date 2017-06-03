string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

p string =~ /z/ ? "Valid" : "Invalid"

p string.to_enum(:scan, /\d+/).map {Regexp.last_match} 
# The line above scan the string looking for all the integers, and pass the regular expression to get what that value is.
