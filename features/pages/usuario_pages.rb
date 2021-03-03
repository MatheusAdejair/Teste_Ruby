class Usuario
    include HTTParty
    require_relative '../hooks/manter_registro_usuario_hook'
    base_uri "https://serverest.dev"

    def initialize(body)
        @options = {:body => body}
    end

    def postUsuario
        self.class.post("/usuarios", @options)
    end
end
