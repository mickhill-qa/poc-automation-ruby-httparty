class EndpointHTTPartyHelper
    
    include HTTParty
    format :json

    def load_contract_api(_json_name)
        path_file = './features/contracts/' + _json_name + '.json'
        JSON.parse(File.read(path_file))
    end

end
