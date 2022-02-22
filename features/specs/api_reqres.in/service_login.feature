#encoding: utf-8
#language: pt
@api_reqres
@api_reqres_login
Funcionalidade: api_reqres.in: /api/login

    Contexto:
        Dado que o cliente possui o Endpoint /api/login da api_reqres.in

    @api_reqres_login_successful
    Cenario: LOGIN - SUCCESSFUL
        Quando o cliente faz uma request com dados validos a api_reqres.in
        Entao a api_reqres.in devolve o status 200
        E a api_reqres.in devolve um token

    @api_reqres_login_unsuccessful
    Cenario: LOGIN - UNSUCCESSFUL
        Quando o cliente faz uma request com dados invalidos a api_reqres.in
        Entao a api_reqres.in devolve o status 400
