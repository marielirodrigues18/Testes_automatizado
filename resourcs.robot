*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${url}                https://blog.agibank.com.br/
${botao_pesquisa}     class=ahfb-svg-iconset.ast-inline-flex.svg-baseline
${caixa_pesquisa}     class=search-field

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


Digitar na caixa de pesquisa o texto "${Consignado}"
   Go To    url=${url}
   Clicar no elemento com texto   O Agibank
   Click Element   ${botao_pesquisa}
   Wait Until Element Is Visible  locator=${caixa_pesquisa}
   Input Text  locator=${caixa_pesquisa}    text=${Consignado}


Clicar no botão para pesquisar
   Click Button   locator=search_submit

Verificar se o resultado do conteudo de pesquisa é exibido "${Consignado}"
   Wait Until Page Contains Element  locator=(//span[contains(text(), '${Consignado}')])

