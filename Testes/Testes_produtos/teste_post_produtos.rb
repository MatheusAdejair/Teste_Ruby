require 'httparty'

#Test POST
response = HTTParty.post('https://serverest.dev/produtos', 
    :body => {"nome": "Teste Adeja","preco": "470","descricao": "Mouse bom","quantidade": "5"})

puts "response code :#{response.code}"
puts "response body :#{response.body}"