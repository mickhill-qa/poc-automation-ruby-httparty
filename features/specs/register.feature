#encoding: utf-8
#language: pt
@api_reqres
@api_reqres_register
Funcionalidade: api_reqres.in: /register

  Contexto:
    Dado que o cliente possui o Endpoint de /register da api_reqres.in

  @api_reqres_register_baseflow
  Cenario: REGISTER - SUCCESSFUL
    Quando o cliente informa o EMAIL e PASSWORD ao /register
    E o cliente faz a request ao /register
    Entao o endpoint "/register" devolve o status 200
    E o endpoint "/register" devolve um response
    E o endpoint "/register" no response devolve um id
    E o endpoint "/register" no response devolve um token

  @api_reqres_register_execao_01
  Cenario: REGISTER - EMAIL em branco
    Quando o cliente informa o EMAIL "em branco" e PASSWORD ao /register
    E o cliente faz a request ao /register
    Entao o endpoint "/register" devolve o status 400
    E o endpoint "/register" devolve um response
    E o endpoint "/register" no response devolve o erro "Missing email or username"

  @api_reqres_register_execao_02
  Cenario: REGISTER - EMAIL invalido
    Quando o cliente informa o EMAIL "invalido" e PASSWORD ao /register
    E o cliente faz a request ao /register
    Entao o endpoint "/register" devolve o status 400
    E o endpoint "/register" devolve um response
    E o endpoint "/register" no response devolve o erro "Note: Only defined users succeed registration"

  @api_reqres_register_execao_03
  Cenario: REGISTER - PASSWORD em branco
    Quando o cliente informa o EMAIL e PASSWORD "em branco" ao /register
    E o cliente faz a request ao /register
    Entao o endpoint "/register" devolve o status 400
    E o endpoint "/register" devolve um response
    E o endpoint "/register" no response devolve o erro "Missing password"
