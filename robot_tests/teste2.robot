*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${SITE_URL_EMERSON}  https://automationpratice.com.br/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456

*** Keywords ***
Abrir site Emerson
    Open Browser  ${SITE_URL_EMERSON}  chrome
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
Cenário 2: Testando Robot
    Abrir site Emerson
    Aguardar Site Carregar
    Clicar sobre o botão Login
    Aguardar Site Carregar
    Digitar E-mail
    Digitar Senha
    Aguardar Site Carregar
    Clicar no botão Login
    Aguardar Site Carregar