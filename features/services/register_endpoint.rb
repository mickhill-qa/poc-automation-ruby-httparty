# frozen_string_literal: true

# A classe RegisterEndpoint representa um endpoint API Reqres.in.
class RegisterEndpoint < ServicesHTTPartyHelper
  attr_accessor :email, :password

  def initialize
    @path_endpoint = '/api/register'
    super
  end

  def send_request_api
    head = { 'Content-Type': 'application/json' }
    body = { 'email': email, 'password': password }
    self.class.post(path_endpoint, headers: head, body: body.to_json)
  end
end
