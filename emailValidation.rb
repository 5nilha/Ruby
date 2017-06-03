VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

def is_validEmail(email)
  email =~ VALID_EMAIL_REGEX
end

p is_validEmail("test@gmail.com") ? "Valid" : "Invalid"
p is_validEmail("fabio@gmail.com") ? "Valid" : "Invalid"
p is_validEmail("fabio.test@hotmail.") ? "Valid" : "Invalid"
p is_validEmail("fabio@sutr") ? "Valid" : "Invalid"
