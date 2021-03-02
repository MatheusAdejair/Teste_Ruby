require 'httparty'
response = HTTParty.get('https://serverest.dev/produtos')
puts "response code :#{response.code}"
puts "response body :#{response.body}"