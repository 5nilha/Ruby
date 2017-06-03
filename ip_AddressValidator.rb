# from 172.16.0.0 to 172.31.255.255

IP_ADDRESS_REGEX = /^((?:(?:^|\.)(?:\d|[1-9]\d|1\d{2}|2[0-4]\d|25[0-5])){4})$/

def is_valid_ip_address (ip)
  ip =~ IP_ADDRESS_REGEX
end

p is_valid_ip_address("999.16.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address("168.16.1.2") ? "Valid" : "Invalid"
p is_valid_ip_address("168.30.0.1") ? "Valid" : "Invalid"
p is_valid_ip_address("325.255.0.0") ? "Valid" : "Invalid"
p is_valid_ip_address("100.0.1.1") ? "Valid" : "Invalid"
p is_valid_ip_address("999.16.0.0") ? "Valid" : "Invalid"