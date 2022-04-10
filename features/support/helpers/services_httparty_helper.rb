# Helpes de base para todos os Endpoints
class ServicesHTTPartyHelper

  include HTTParty
  include SecretsHelper

  # http_proxy "", 8080                       ## Proxy para acessos de APIs externos
  # debug_output $stdout                      ## Depuracao das requiseicao HTTP
  # default_options.update(verify: false)     ## Desativar Verificacaoe de SSL
  format :json
  base_uri BASE_URL

  attr_reader :headers_endpoint
  attr_reader :body_endpoint
  attr_reader :path_endpoint

  def initialize
    @headers_endpoint = {}
    @body_endpoint = {}
    # Verifica o preenchimento do path_endpoint
    if @path_endpoint.blank?
      @path_endpoint = ''
      raise "\nErro no `@path_endpoint' do #{self.class.name}\n./features/services/...\n\n"
    end
  end

  def load_contract_api(json_file)
    path_file = './features/contracts/' + json_file
    JSON.parse(File.read(path_file))
  end

end
