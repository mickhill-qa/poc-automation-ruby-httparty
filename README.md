[ruby-image]: https://img.shields.io/badge/ruby-2.7-red
[ruby-url]: https://www.ruby-lang.org/pt/
[cucumber-image]: https://img.shields.io/badge/cucumber-6.1.0-brightgreen
[cucumber-url]: https://cucumber.io/docs/installation/ruby/
[httparty-image]: https://img.shields.io/badge/httparty-0.20.0-orange
[httparty-url]: https://rubygems.org/gems/httparty/versions/0.20.0
[rspec-image]: https://img.shields.io/badge/rspec-3.10.0-red
[rspec-url]: https://rspec.info/documentation/
[report_builder-image]: https://img.shields.io/badge/report_builder-1.9-blue
[report_builder-url]: https://reportbuilder.rajatthareja.com/

# poc-automation-ruby-httparty

[![Ruby Version][ruby-image]][ruby-url]
[![HTTParty Version][httparty-image]][httparty-url]
[![Cucumber Version][cucumber-image]][cucumber-url]
[![Rspec Version][rspec-image]][rspec-url]
[![ReportBuilder Version][report_builder-image]][report_builder-url]

### Estrutura do projeto
```
./
├── docs/
├── features/
│   ├── contracts/
│   ├── hooks/
│   ├── services/
│   ├── specs/
│   ├── step_definitions/
│   └── support/
│       ├── api_base_class/
│       ├── config/
│       │   └── environments.yml
│       ├── helpers/
│       │   └── services_httparty_helper.rb
│       ├── env.rb
│       └── report_builder.rb
├── reports/
│   └── report-builder/
├── .gitignore
├── cucumber.yml
├── Gemfile
├── Gemfile.lock
└── README.md
```


---
## Configurar Ambiente
Assumimos que você já ***possui o Ruby disponível no terminal***, caso não possua segue um passo a passo.
* [Instalar Ruby](docs/config-env/install-ruby.md)

Agora você precisará do **bundler** para baixar as dependências de pacotes do projeto ruby conforme o arquivo ***"[Gemfile](Gemfile)"***.
* [Instalar Bundler](docs/config-env/install-bundler.md)


---
## Executar Testes
Para executar os testes localmente abra a pasta do projeto no terminal e execute o comando:
```
cucumber
```
Ou para um cenário específico:
```
cucumber -t @myTag
```


---
## Alterar Ambientes de Execução
Por padrão os testes irão rodar usando a url de **qa** conforme arquivo "**[environments.yml](features/support/config/environments.yml)**".

Os ambiente disponíveis são:
- dev
- qa
- prod

Para alterar em tempo de execução, adicione o parâmetro "**ENV**" no terminal:
```
cucumber ENV=dev
```
Para alterar o padrão vá até o arquivo "**[cucumber.yml](cucumber.yml)**" e altere a linha 4:
```
default: (...) -p qa
```
