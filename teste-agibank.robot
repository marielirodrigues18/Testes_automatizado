*** Settings ***
Documentation     Essa suite testa o acesso ao blog
Resource          resourcs.robot
Test Setup        Abrir o navegador e acessar o blog
Test Teardown     Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acessar a opção de "Pesquisa"
    [Documentation]  Objetivo deste teste é verificar se a opção de "Pesquisar" no blog da Agibank está funcionando.
    [Tags]           botao_pesquisa

    Acessar o blog blog.agibank.com.br
    Clicar na opcao de Pesquisa
    Verificar se o botao abri a caixa de pesquisa


Caso de teste 02 - Pesquisar conteúdo na barra de pesquisa
    [Documentation]  Objetivo deste teste é informar um dado e verificar se a pesquisa está retornando resultado relevantes ao conteudo pesquisado.
    Digitar na caixa de pesquisa o texto "Consignado"
    Clicar no botão para pesquisar
    Verificar se o resultado do conteudo de pesquisa é exibido "Consignado"
    




