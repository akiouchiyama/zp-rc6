***Settings***
Documentation       Login

Resource    ../resources/base.robot

# executa uma ou mais Keywords somente uma vez antes de todos os casos de teste.
Suite Setup      Start Session
# executa uma ou mais Keywords somente uma vez após de todos os caso de teste.
Suite Teardown       Finish Session

***Test Cases***
Login do Administrador
    Acesso a página Login
    Submeto minhas credenciais  admin@zepalheta.com.br  pwd123
    Devo ver a área logada
