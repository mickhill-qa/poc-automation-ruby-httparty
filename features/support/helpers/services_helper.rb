# Pegando todos os arquivos que estao dentro do caminho a baixo
Dir[File.join(File.dirname(__FILE__), '../services/*/*.rb')].each { |file| require file }

# Depois que pegar os arquivos com (_page.rb) estancio todos as suas variaveis
module ServicesHelper
end

World ServicesHelper
