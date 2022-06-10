# Helpes de base para todos os Endpoints
class ServicesHTTPartyHelper
  include HTTParty

  # http_proxy "", 8080                       ## Proxy para acessos de APIs externos
  # debug_output $stdout                      ## Depuracao das requiseicao HTTP
  # default_options.update(verify: false)     ## Desativar Verificacaoe de SSL
  format :json
  base_uri BASE_URL

  attr_reader :headers_api, :path_endpoint

  def initialize
    @headers_api = {}
    @path_endpoint = "@path_endpoint NAO ESPECIFICADA: `#{self.class.name}::initialize`" if @path_endpoint.blank?
  end

  def load_contract_api(json_name)
    path_file = "./features/contracts/#{json_name}.json"
    JSON.parse(File.read(path_file))
  end
end
