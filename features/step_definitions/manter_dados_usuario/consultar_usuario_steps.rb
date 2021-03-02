
Dado('que o endereço de API de consultas de usuários esteja OK') do
    $uri_base = "https://serverest.dev/usuarios"
  end
  
  Quando('realizar uma requisição para consultar um usuário válido') do
    $response = HTTParty.get($uri_base)
  end
  
  Então('a API deverá retornar confirmação de sucesso da consulta com código {int}') do |int|
    puts "response code :#{$response.code}"
    puts "response body :#{$response.body}"
  end