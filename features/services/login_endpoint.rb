# A classe LoginEndpoint representa um endpoint API Reqres.in.
class LoginEndpoint < ServicesHTTPartyHelper

  attr_accessor :email, :password

  def initialize
    @path_endpoint = '/api/login'
    super
  end

  def send_request_api
    head = headers_api.merge(
      { 'Content-Type' => 'application/json' }
    )
    body = { 'email': email, 'password': password }
    self.class.post(path_endpoint, headers: head, body: body.to_json)
  end
end
