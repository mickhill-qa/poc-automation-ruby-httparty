## Contexto
Dado(/^*o cliente possui o Endpoint \/api\/login da api_reqres.in$/) do
  @endpoint_login = LoginEndpoint.new
end


## @api_reqres_login_successful
Quando('o cliente faz uma request com dados validos a api_reqres.in') do
  @endpoint_login.email = "eve.holt@reqres.in"
  @endpoint_login.senha = "cityslicka"
  @response             = @endpoint_login.send_request_api
end

Entao('a api_reqres.in devolve o status {int}') do |code_expect|
  expect(@response.code).to eql code_expect
  log @response.code
end

Entao('a api_reqres.in devolve um token') do
  log @response
end


## @api_reqres_login_unsuccessful
Quando('o cliente faz uma request com dados invalidos a api_reqres.in') do
  @endpoint_login.email = "eve.holt@reqres.in"
  @endpoint_login.senha = ""
  @response             = @endpoint_login.send_request_api
end
