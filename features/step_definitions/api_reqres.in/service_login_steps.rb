## @service_login_successful
Quando('o cliente faz uma request com dados validos') do
    body_request = endpoint_login.prepare_body_login("eve.holt@reqres.in", "cityslicka")
    @response = endpoint_login.send_request(body_request)
end

Entao('a API devolve o status {int}') do |code_expect|
    expect(@response.code).to eql code_expect
end

Entao('a API devolve um token') do
    log @response
end

## @service_login_unsuccessful
Quando('o cliente faz uma request com dados invalidos') do
    body_request = endpoint_login.prepare_body_login("eve.holt@reqres.in", "")
    @response = endpoint_login.send_request(body_request)
end
