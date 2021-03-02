require 'httparty'

#Test POST
response = HTTParty.post('https://serverest.dev/login', 
    :body => {
        "email": "adejanelson@qa.com.br",
        "password": "123456"
      })

puts "response code :#{response.code}"
puts "response body :#{response.body}"

