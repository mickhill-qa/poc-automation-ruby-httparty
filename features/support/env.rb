require 'rspec'
require 'rspec/matchers'
require 'rspec/expectations'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'report_builder'
require 'json'
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
ENVIRONMENT = YAML.load_file(File.dirname(__FILE__) + "/config/environments.yml")[SELECTED_ENV]
BASE_URL    = ENVIRONMENT['base_url']
REPORT_PATH = "reports/report-builder/"

## Helpers
Dir[File.join(
  File.dirname(__FILE__), '/helpers/*.rb')
].each do |file|
  require_relative file
end

## API Base Class
Dir[File.join(
  File.dirname(__FILE__), '/api_base_class/*.rb')
].each do |file|
  require_relative file
end

## Services
Dir[File.join(
  File.dirname(__FILE__), '../services/*.rb')
].each do |file|
  require file
end
