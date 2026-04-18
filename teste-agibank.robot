*** Settings ***
Documentation     Essa suite testa o acesso ao blog
Resource          resourcs.robot
Test Setup        Abrir o navegador e acessar o blog
Test Teardown     Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acessar a opção de "Pesquisa"
    [Documentation]  Objetivo deste teste é verificar se a opção de "Pesquisa" no blog da Aigbank está funcionand.
    [Tags]           botao_pesquisa

    Acessar o blog blog.agibank.com.br
    Clicar na opcao de Pesquisa
    Verificar se o botao abri a caixa de pesquisa


Caso de teste 02 - Pesquisar conteúdo na barra de pesquisa
    [Documentation]  Objetivo deste teste é verificar se a pesquisa está retornando resultado relevantes ao termo.
 #  [Tags]           listar_conteudo
    Digitar na caixa de pesquisa o "conteudo"
#   Clicar no botão para pesquisar
#   verificar se o resultado do conteudo de pesquisa é exibido
    




