*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${url}                https://blog.agibank.com.br/
${botao_pesquisa}     class=ahfb-svg-iconset.ast-inline-flex.svg-baseline
${caixa_pesquisa}     class=text

*** Keywords ***

Abrir o navegador e acessar o blog
   Open Browser    browser=chrome
   Maximize Browser Window

Fechar o navegador
   Close Browser

Acessar o blog blog.agibank.com.br
   Go To    url=${url}
   Aguardar elemento com texto    O Agibank
   Clicar no elemento com texto   O Agibank

Aguardar elemento com texto
   [Arguments]    ${texto}
   Wait Until Element Is Visible    xpath=//*[contains(text(), "${texto}")]

Clicar no elemento com texto
   [Arguments]    ${texto}
   Click Element    xpath=//*[contains(text(), "${texto}")]


Clicar na opcao de Pesquisa
   Click Element   ${botao_pesquisa} 

Verificar se o botao abri a caixa de pesquisa
   Wait Until Element Is Visible  ${caixa_pesquisa}


Digitar na caixa de pesquisa o "${conteudo}"
   Go To    url=${url} 
   Aguardar elemento com texto    O Agibank
   Click Element   ${botao_pesquisa} 
#   Wait Until Element Is Visible  ${caixa_pesquisa}
#   Input Text    locator=${caixa_pesquisa}    ${conteudo}
   


#Digitar na caixa de pesquisa o termo "consignado"
#   Open Browser    browser=chrome
#   Maximize Browser Window
#   Input Text    ${caixa_pesquisa}    consignado

