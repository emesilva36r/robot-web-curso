*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${SITE_URL}  https://automationpratice.com.br/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456

*** Keywords ***
Acessar site da Qazando
    Open Browser  ${SITE_URL}  chrome
Aguardar Site Carregar
    Sleep  5s
Clicar sobre o botão Login
    Click Element  xpath://a[@href="/login"]
Digitar E-mail
    Input Text  id:user  ${USUARIO_EMAIL}
Digitar Senha
    Input Text  id:password  ${USUARIO_SENHA}
Clicar no botão Login
    Click Element  id=btnLogin

*** Test Cases ***
Cenário 1: Acessando site do Robot
    Acessar site da Qazando
    Aguardar Site Carregar
    Clicar sobre o botão Login
    Aguardar Site Carregar
    Digitar E-mail
    Digitar Senha
    Aguardar Site Carregar
    Clicar no botão Login
    Aguardar Site Carregar