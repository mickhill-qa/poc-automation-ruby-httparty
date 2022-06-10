## Contexto
Dado('que o cliente possui o Endpoint de \/login da api_reqres.in') do
  @endpoint_login = LoginEndpoint.new
  print_log @endpoint_login.path_endpoint
end


## Fluxo Base
# @api_reqres_login_baseflow
Quando('o cliente informa o EMAIL e PASSWORD ao \/login') do
  @endpoint_login.email = SECRETS['email']
  @endpoint_login.password = SECRETS['password']
end

E('o cliente faz a request ao \/login') do
  @response = @endpoint_login.send_request_api
end


## Fluxo Alternativo


## Fluxo de Excecao
# @api_reqres_login_execao_01
Quando('o cliente informa o EMAIL "em branco" e PASSWORD ao \/login') do
  @endpoint_login.email = ''
  @endpoint_login.password = SECRETS['password']
end

# @api_reqres_login_execao_02
Quando('o cliente informa o EMAIL "invalido" e PASSWORD ao \/login') do
  @endpoint_login.email = 'eve.holt'
  @endpoint_login.password = SECRETS['password']
end

# @api_reqres_login_execao_03
Quando('o cliente informa o EMAIL e PASSWORD "em branco" ao \/login') do
  @endpoint_login.email = SECRETS['email']
  @endpoint_login.password = ''
end

# @api_reqres_login_execao_04
Quando('o cliente informa o EMAIL e PASSWORD "invalido" ao \/login') do
  @endpoint_login.email = SECRETS['email']
  @endpoint_login.password = 'xxx'
end
