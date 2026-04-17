*** Settings ***
Documentation     Essa suite testa o acesso ao blog
Test Setup        Abrir o navegador e acessar o blog
Test Teardown     Fechar o navegador


*** Test Cases ***
Caso de teste 01 - Acessar a opção de "Pesquisa"
    [Documentation]  Objetivo deste teste é verificar se a opção de "Pesquisa" no blog da Aigbank está funcionand.
    [Tags]           menu_pesquisa
    Acessar o blog "blog.agibank.com.br"
    Clicar na opção de "Pesquisa"
    Verificar se a página abriu corretamente 
    Verificar se o botão de "Pesquisa" está visível
    Verificar se o botão abri a caixa de pesquisa


Caso de teste 02 - Pesquisar conteúdo na barra de pesquisa
    [Documentation]  Objetivo deste teste é verificar se a pesquisa está retornando resultado relevantes ao termo.
    [Tags]           busca_conteudo   listar_conteudo
    Acessar o botão de pesquisa
    Digitar na caixa de pesquisa o termo "consignado"
    Clicar no botão para pesquisar
    verificar se o resultado do conteudo de pesquisa é exibido
    verificar se o resultado da pesquisa é relevante ao termo pesquisado
    




