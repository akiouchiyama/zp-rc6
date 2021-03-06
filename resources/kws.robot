***Settings***

Library     SeleniumLibrary

***Keywords***
## Login
Acesso a página Login
    Go to  http://zepalheta-web:3000/

Submeto minhas credenciais
    [Arguments]     ${email}     ${password}
    Login With      ${email}     ${password}

Devo ver a área logada
    Wait Until Page Contains    Aluguéis    5


Devo ver um toaster com a mensagem
    [Arguments]     ${expect_message}

    Wait Until Element Contains    ${TOASTER_SUCCESS}      ${expect_message}

## Customers
Dado que acesso o formulário de cadastro de clientes
    Wait Until Element Is Visible   ${NAV_CUSTOMERS}        5
    Click Element                   ${NAV_CUSTOMERS} 
    Wait Until Element Is Visible   ${CUSTOMERS_FORM}       5
    Click Element                   ${CUSTOMERS_FORM}

Quando faço a inclusão desse cliente:
    [Arguments]     ${name}     ${cpf}      ${address}      ${phone_number}

    Remove Customer By Cpf      ${cpf}

    Register New Customer   ${name}     ${cpf}      ${address}      ${phone_number}

Então devo ver a notificação:
    [Arguments]     ${expect_notice}

    Wait Until Element Contains     ${TOASTER_SUCCESS}     ${expect_notice}        5

Então devo ver mensagens informando que os campos do cadastro de clientes são obrigatórios
    Wait Until Element Contains     Nome é obrigatório          5
    Wait Until Element Contains     CPF é obrigatório           5
    Wait Until Element Contains     Endereço é obrigatório      5
    Wait Until Element Contains     Telefone é obrigatório      5

