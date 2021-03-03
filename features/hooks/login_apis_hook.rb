  Before '@usuario' do

    @body = {
        "email": "adejanelson@qa.com.br",
        "password": "123456"
      }

      #@body = JSON.generate(body)
      @login = Login.new(@body)
end