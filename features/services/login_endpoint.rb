class LoginEndpoint < ServicesHTTPartyHelper

  attr_accessor :email
  attr_accessor :password

  def initialize
    @path_endpoint = '/api/login'
    super
  end

  def send_request_api
    headers_endpoint['Content-Type'] = 'application/json'
    body_endpoint['email']    = email
    body_endpoint['password'] = password
    self.class.post(
      @path_endpoint,
      :headers => headers_endpoint,
      :body => body_endpoint.to_json
    )
  end

end
