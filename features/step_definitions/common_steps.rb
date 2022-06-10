# frozen_string_literal: true

### Common Steps
## generic steps
Entao('o endpoint {string} devolve o status {int}') do |_endpoint, code_expect|
  print_log @response.code
  expect(@response.code).to eql code_expect
end

E('o endpoint {string} devolve um response') do |_endpoint|
  response_body = @response.body
  response_body_exist = !response_body.nil?
  expect(response_body_exist).to eql true
  print_log response_body
end

E('o endpoint {string} no response devolve um token') do |_endpoint|
  token = JSON.parse(@response.body)['token']
  expect_true_data_exist(token)
end

E('o endpoint {string} no response devolve o erro {string}') do |_endpoint, msg_erro|
  error = JSON.parse(@response.body)['error']
  expect(error).to eql msg_erro
  print_log error
end

## specific steps
