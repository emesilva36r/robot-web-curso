*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***

*** Keywords ***
Abrir esse site
    [Arguments]  ${url}
    Open Browser  ${url}  chrome
Aguardar Site Carregar
    Sleep  3s
Clicar sobre o botão Login
    Click Element  xpath://a[@href="/login"]
Digitar E-mail
    [Arguments]  ${USUARIO_EMAIL} 
    Input Text  id:user  ${USUARIO_EMAIL} 

Digitar Senha
    [Arguments]  ${USUARIO_SENHA} 
    Input Text  id:password  ${USUARIO_SENHA}

Clicar no botão Login
    Click Element  id=btnLogin

*** Test Cases ***
Cenário 3: Testando Valor no teste
    Abrir esse site  https://automationpratice.com.br/
    Aguardar Site Carregar
    Clicar sobre o botão Login
    Aguardar Site Carregar
    Digitar E-mail  teste@qazando.com.br
    Digitar Senha  123456
    Aguardar Site Carregar
    Clicar no botão Login
    Aguardar Site Carregar