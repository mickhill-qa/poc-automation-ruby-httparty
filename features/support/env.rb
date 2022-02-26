require 'rspec'
require 'rspec/matchers'
require 'rspec/expectations'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'report_builder'
require 'json'
require 'pry'
require 'base64'

## Global
World RSpec::Matchers

## Definiçoes de Ambiente
# escolhido em cucumber.yml
# prod, dev, qa
SELECTED_ENV = ENV['ENV']
if SELECTED_ENV.blank?
  raise "Constante ENV está vazia.\nPor favor, especificar Ambiente: (prod, dev, qa).\nEx.:\n  $ cucumber ENV=qa\n    ou\n  $ cucumber -p qa\n\n"
  RSpec.configure do |config|
    config.filter_run_excluding type: :feature
  end
end

## Defaults
ENVIRONMENT = YAML.load_file(File.dirname(__FILE__) + '/config/environments.yml')[SELECTED_ENV]
BASE_URL    = ( !ENV['URL'].nil? ? ENV['URL'] : ENVIRONMENT['base_url'] )
REPORT_PATH = 'reports/report-builder/'

## Verificacao da BASE_URL
if BASE_URL.blank?
  raise "Constante BASE_URL está vazia.\nPor favor, especificar a 'base_url' no arquivo de Ambiente: (prod, dev, qa).\nEx.:\n  features/support/config/environments.yml\n    ou na execucao\n  $ cucumber URL=http://url-do-ambiente.testes\n\n"
  RSpec.configure do |config|
    config.filter_run_excluding type: :feature
  end
end

## Helpers
Dir[File.join(
  File.dirname(__FILE__), '/helpers/*.rb')
].each do |file|
  require_relative file
end

## Services
Dir[File.join(
  File.dirname(__FILE__), '../services/*.rb')
].each do |file|
  require file
end

## Secrets Application
include SecretsHelper
SECRETS = get_secrets()
