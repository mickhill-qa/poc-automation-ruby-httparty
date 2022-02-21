class ApiReqresIn < ServicesHTTPartyHelper
  include HTTParty
  format :json
  base_uri BASE_URL['api_reqres.in']
end