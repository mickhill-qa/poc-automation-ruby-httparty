class ConsultaCepEndpoint < ApiViacep

  attr_accessor :cep
  attr_reader   :path
  attr_reader   :return_formats

  def initialize
    @path = "/ws"
    @return_formats = "/json/unicode"
    super
  end

  def send_request_api
    self.class.get("#{@path}/#{cep}#{@return_formats}")
  end

end