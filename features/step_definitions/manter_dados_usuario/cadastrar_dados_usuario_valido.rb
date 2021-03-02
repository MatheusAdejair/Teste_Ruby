Dado('que o endereço de API de cadastro de usuários esteja OK') do
    $uri_base = "https://serverest.dev/usuarios"
  end
  
  Quando('realizar uma requisição para registrar um novo usuário') do
    $response = HTTParty.post($uri_base, 
        :body => {
            "nome": @nome,
            "email": @email,
            "password": "123456",
            "administrador": "true"
          })
  end
  
  Então('a API deverá retornar confirmação de sucesso do cadastro com sucesso com código {int}') do |int|
    puts "response code :#{$response.code}"
    puts "response body :#{$response.body}"
  end