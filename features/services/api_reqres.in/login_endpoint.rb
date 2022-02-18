class LoginEndpoint < EndpointHTTPartyHelper
    
    base_uri ENVIRONMENT['api_reqres.in']

    def prepare_body_login(_email, _senha)
        json = load_contract_api("api_reqres.in/login")
        json["email"]    = _email
        json["password"] = _senha
        json.to_json
    end

    def send_request(_body)
        self.class.post("/api/login", 
            :headers => {"Content-Type": "application/json"},
            :body => _body
        )
    end

end
