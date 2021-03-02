require 'httparty'

#Test POST
response = HTTParty.post('https://serverest.dev/usuarios', 
    :body => {
        "nome": "Adejanelson Perigoso1",
        "email": "adejanelson@qa.com.br",
        "password": "123456",
        "administrador": "true"
      })

puts "response code :#{response.code}"
puts "response body :#{response.body}"