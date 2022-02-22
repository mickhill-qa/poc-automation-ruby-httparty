## Contexto
Dado(/^*o cliente possui o Endpoint \/api\/login$/) do
  @endpoint_login = LoginEndpoint.new
end


## @service_login_successful
Quando('o cliente faz uma request com dados validos') do
  @endpoint_login.email = "eve.holt@reqres.in"
  @endpoint_login.senha = "cityslicka"
  @response             = @endpoint_login.send_request_api
end

Entao('a API devolve o status {int}') do |code_expect|
  expect(@response.code).to eql code_expect
  log @response.code
end

Entao('a API devolve um token') do
  log @response
end


## @service_login_unsuccessful
Quando('o cliente faz uma request com dados invalidos') do
  @endpoint_login.email = "eve.holt@reqres.in"
  @endpoint_login.senha = ""
  @response             = @endpoint_login.send_request_api
end
