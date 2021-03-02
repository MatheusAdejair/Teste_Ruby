require 'httparty'

#Test GET
response = HTTParty.get('https://serverest.dev/produtos')
puts "response code :#{response.code}"
puts "response code :#{response.headers.inspect}"
puts "response body :#{response.body}"

