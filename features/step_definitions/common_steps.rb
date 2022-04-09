### Common Steps
## generic steps
Entao('o endpoint {string} devolve o status {int}') do |endpoint, code_expect|
  log @response.code
  expect(@response.code).to eql code_expect
end

E('o endpoint {string} devolve um response') do |endpoint|
  response_body = @response.body
  response_body_exist = !( response_body.nil? )
  expect( response_body_exist ).to eql true
  log response_body
end

E('o endpoint {string} no response devolve um token') do |endpoint|
  token = JSON.parse( @response.body )['token']
  token_exist = !( token.nil? )
  expect( token_exist ).to eql true
  log token
end

E('o endpoint {string} no response devolve o erro {string}') do |endpoint, msg_erro|
  error = JSON.parse( @response.body )['error']
  expect( error ).to eql msg_erro
  log error
end


## specific steps
