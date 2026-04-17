*** Settings ***

Library    SeleniumLibrary

*** Variables ***
${url}                https://blog.agibank.com.br/
${botao_pesquisa}     div[@class='ast-builder-grid-row ast-builder-grid-row-has-sides ast-builder-grid-row-no-center']//div[@class='ast-builder-layout-element ast-flex site-header-focus-item ast-header-search']//span[@class='ahfb-svg-iconset ast-inline-flex svg-baseline']"

*** Keywords ***

Abrir o navegador e acessar o blog
   Open Browser    browser=chrome
   Maximize Browser Window

Fechar o navegador
   Close Browser

Acessar o blog blog.agibank.com.br
   Go To    url=${url}
   Wait Until Element Is Visible    ${botao_pesquisa}    timeout=3s
