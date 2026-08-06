*** Settings ***
Library    SeleniumLibrary
Library    BuiltIn

*** Variables ***
${SITE_URL}  https://automationpratice.com.br/
${USUARIO_EMAIL}  qazando@teste.com
${USUARIO_SENHA}  123456

*** Keywords ***
Abrir Site
    Open Browser  ${SITE_URL}  chrome
    Esperar Elemento  5
Esperar Elemento
    [Arguments]   ${tempo}
    Set Selenium Implicit Wait   ${tempo}s
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
    Abrir Site
    Clicar sobre o botão Login
    Digitar E-mail
    Digitar Senha
    Clicar no botão Login
    
    