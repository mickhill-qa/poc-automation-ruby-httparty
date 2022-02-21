#language: pt
#encoding: utf-8
@service_login
Funcionalidade: Endpoint /api/login

    Contexto:
        Dado que o cliente possui o Endpoint /api/login

    @service_login_successful
    Cenario: LOGIN - SUCCESSFUL
        Quando o cliente faz uma request com dados validos
        Entao a API devolve o status 200
        E a API devolve um token

    @service_login_unsuccessful
    Cenario: LOGIN - UNSUCCESSFUL
        Quando o cliente faz uma request com dados invalidos
        Entao a API devolve o status 400
