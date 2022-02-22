class ApiViacep < ServicesHTTPartyHelper
  include HTTParty
  # http_proxy "", 8080
  format :json
  base_uri BASE_URL['api_viacep']
end