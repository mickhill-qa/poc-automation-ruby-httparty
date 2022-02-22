## Contexto
Dado(/^*o cliente possui o Endpoint de consulta cep da api_viacep$/) do
  @endpoint_busca_cep = ConsultaCepEndpoint.new
end


## @api_viacep_cep_valido
Quando('o cliente faz uma request com dados validos a api_viacep') do
  @endpoint_busca_cep.cep = "60833155"
  @response               = @endpoint_busca_cep.send_request_api
end

Entao('a api_viacep devolve o status {int}') do |code_expect|
  expect(@response.code).to eql code_expect
  log @response.code
end

Entao('a api_viacep devolve dados do endereco referenta ao cep') do
  log @response
end


## @api_viacep_cep_invalido
Quando('o cliente faz uma request com dados invalidos a api_viacep') do
  @endpoint_busca_cep.cep = "00000000000"
  @response               = @endpoint_busca_cep.send_request_api
end
