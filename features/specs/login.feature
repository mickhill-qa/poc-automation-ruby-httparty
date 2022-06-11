#encoding: utf-8
#language: pt
@api_reqres
@api_reqres_login
Funcionalidade: api_reqres.in: /login

  Contexto:
    Dado que o cliente possui o Endpoint de /login da api_reqres.in

  @api_reqres_login_baseflow
  Cenario: LOGIN - SUCCESSFUL
    Quando o cliente informa o EMAIL e PASSWORD ao /login
    E o cliente faz a request ao /login
    Entao o endpoint "/login" devolve o status 200
    E o endpoint "/login" devolve um response
    E o endpoint "/login" no response devolve um token

  @api_reqres_login_execao_01
  Cenario: LOGIN - EMAIL em branco
    Quando o cliente informa o EMAIL "em branco" e PASSWORD ao /login
    E o cliente faz a request ao /login
    Entao o endpoint "/login" devolve o status 400
    E o endpoint "/login" devolve um response
    E o endpoint "/login" no response devolve o erro "Missing email or username"

  @api_reqres_login_execao_02
  Cenario: LOGIN - EMAIL invalido
    Quando o cliente informa o EMAIL "invalido" e PASSWORD ao /login
    E o cliente faz a request ao /login
    Entao o endpoint "/login" devolve o status 400
    E o endpoint "/login" devolve um response
    E o endpoint "/login" no response devolve o erro "user not found"

  @api_reqres_login_execao_03
  Cenario: LOGIN - PASSWORD em branco
    Quando o cliente informa o EMAIL e PASSWORD "em branco" ao /login
    E o cliente faz a request ao /login
    Entao o endpoint "/login" devolve o status 400
    E o endpoint "/login" devolve um response
    E o endpoint "/login" no response devolve o erro "Missing password"

  # @api_reqres_login_execao_04
  # Cenario: LOGIN - PASSWORD invalido
  #   Quando o cliente informa o EMAIL e PASSWORD "invalido" ao /login
  #   E o cliente faz a request ao /login
  #   Entao o endpoint "/login" devolve o status 400
  #   E o endpoint "/login" devolve um response
  #   E o endpoint "/login" no response devolve o erro "Missing password"
