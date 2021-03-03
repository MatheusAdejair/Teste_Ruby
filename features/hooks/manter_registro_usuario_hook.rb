Before '@usuario' do
    @nome = Faker::Name.first_name
    $email = @nome+"@qa.teste.com"

    @body = {
        "nome": @nome,
        "email": $email.to_s,
        "password": "123456",
        "administrador": "true"
      }

      #@body = JSON.generate(body)
      @usuario = Usuario.new(@body)
end