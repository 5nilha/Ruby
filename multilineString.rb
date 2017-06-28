#Multiline String using EOM

my_string = <<EOM
This is a very long string
that contains many information
and interpolation like the sum of
4 + 5 that is #{4 + 5}\n\n
EOM

puts my_string