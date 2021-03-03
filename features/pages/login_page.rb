class Login
    include HTTParty
    require_relative '../hooks/login_apis_hook'
    base_uri "'https://serverest.dev"

    def initialize(body)
        @options = {:body => body}
    end

    def postLogin
        self.class.post("/login", @options)
    end
end