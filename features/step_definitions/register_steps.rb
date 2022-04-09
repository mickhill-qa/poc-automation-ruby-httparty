## Contexto
Dado('que o cliente possui o Endpoint de \/register da api_reqres.in') do
  @endpoint_register = RegisterEndpoint.new
  log @endpoint_register.path_endpoint
end


## Fluxo Base
# @api_reqres_register_baseflow
Quando('o cliente informa o EMAIL e PASSWORD ao \/register') do
  @endpoint_register.email = SECRETS['email']
  @endpoint_register.password = SECRETS['password']
end

E('o cliente faz a request ao \/register') do
  @response = @endpoint_register.send_request_api
end

E('o endpoint "\/register" no response devolve um id') do
  id = JSON.parse( @response.body )['id']
  id_exist = !( id.nil? )
  expect( id_exist ).to eql true
  log id
end


## Fluxo Alternativo


## Fluxo de Excecao
# @api_reqres_register_execao_01
Quando('o cliente informa o EMAIL "em branco" e PASSWORD ao \/register') do
  @endpoint_register.email = ''
  @endpoint_register.password = SECRETS['password']
end

# @api_reqres_register_execao_02
Quando('o cliente informa o EMAIL "invalido" e PASSWORD ao \/register') do
  @endpoint_register.email = 'eve.holt'
  @endpoint_register.password = SECRETS['password']
end

# @api_reqres_register_execao_03
Quando('o cliente informa o EMAIL e PASSWORD "em branco" ao \/register') do
  @endpoint_register.email = SECRETS['email']
  @endpoint_register.password = ''
end
