Before '@usuario' do
    @nome = Faker::Name.first_name

    $email = @nome+"@qa.teste.com"
    print "teste print string :#{$email}"

    @body = {
        "nome": @nome,
        "email": $email.to_s,
        "password": "123456",
        "administrador": "true"
      }

      #@body = JSON.generate(body)
      @usuario = Usuario.new(@body)
end