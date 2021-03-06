***Settings***
Documentation       Cadastro de clientes

Resource            ../resources/base.robot
Test Setup          Login Session
Test Teardown       Finish Session

***Test Cases***
Novo cliente
    Dado que acesso o formulário de cadastro de clientes
    Quando faço a inclusão desse cliente:
    ...     Bon Jovi    00000001406     Rua dos Bugs, 1000      11999999999
    Então devo ver a notificação:   Cliente cadastrado com sucesso!

Campos obrigatórios
    [tags]      temp
    Dado que acesso o formulário de cadastro de clientes
    Quando faço a inclusão desse cliente:
    ...     ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Então devo ver mensagens informando que os campos do cadastro de clientes são obrigatórios
