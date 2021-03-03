# primeiro exemplo criado sem as configuracoes de orientação a obj
# -----------------------------------------------------------------
# Dado('que o endereço de API de cadastro de usuários esteja OK') do
#     # $uri_base = "https://serverest.dev/usuarios"
#   end
  
#   Quando('realizar uma requisição para registrar um novo usuário') do
#     $nome = @nome
#     $email = @nome+"@qa.teste.com".to_s
#     $response = HTTParty.post($uri_base, 
#         :body => {
#             "nome": $nome,
#             "email": $email,
#             "password": "123456",
#             "administrador": "true"
#           })
#   end
  
#   Então('a API deverá retornar confirmação de sucesso do cadastro com sucesso com código {int}') do |int|
#     puts "response code :#{$response.code}"
#     puts "response body :#{$response.body}"
#   end
# -----------------------------------------------------------------

Dado('que o endereço de API de cadastro de usuários esteja OK') do

end

Quando('realizar uma requisição para registrar um novo usuário') do
  $response = @usuario.postUsuario
end

Então('a API deverá retornar confirmação de sucesso do cadastro com sucesso com código {int}') do |int|
  print "response code :#{$response.code}"
  print "response body :#{$response.body}"
end