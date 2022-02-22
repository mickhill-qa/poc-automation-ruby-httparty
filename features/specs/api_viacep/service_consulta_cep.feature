#encoding: utf-8
#language: pt
@api_viacep
Funcionalidade: api_viacep: consulta cep

  Contexto:
    Dado que o cliente possui o Endpoint de consulta cep da api_viacep

  @api_viacep_cep_valido
  Cenario: CEP Valido
    Quando o cliente faz uma request com dados validos a api_viacep
    Entao a api_viacep devolve o status 200
    E a api_viacep devolve dados do endereco referenta ao cep

  @api_viacep_cep_invalido
  Cenario: CEP Invalido
    Quando o cliente faz uma request com dados invalidos a api_viacep
    Entao a api_viacep devolve o status 400