require 'httparty'

#Test POST
response = HTTParty.get('https://serverest.dev/login')

puts "response code :#{response.code}"
puts "response body :#{response.body}"