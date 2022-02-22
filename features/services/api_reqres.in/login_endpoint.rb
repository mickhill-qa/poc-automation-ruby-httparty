class LoginEndpoint < ApiReqresIn

    attr_accessor :email
    attr_accessor :senha
    attr_reader   :path

    def initialize
        @path = "/api/login"
        super
    end

    def send_request_api
        json             = load_contract_api("api_reqres.in/login")
        json["email"]    = email
        json["password"] = senha
        self.class.post(
          @path,
          :headers => {"Content-Type": "application/json"},
          :body => json.to_json
        )
    end

end
