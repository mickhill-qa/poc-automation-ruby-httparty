class ServicesHTTPartyHelper
  # attr_reader :path
  def initialize
    if(@path.blank?)
      raise "\nErro no `@path' do #{self.class.name}\n./features/services/...\n\n"
    end
  end
  def load_contract_api(_json_name)
    path_file = './features/contracts/' + _json_name + '.json'
    JSON.parse(File.read(path_file))
  end
end