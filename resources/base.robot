* Settings *
Documentation            Tudo deve começar por aqui

#biblioteca responsável pela a integração do sikuli com o robot
Library        SikuliLibrary 

Resource    actions/pdv.robot

#essa parte indica quais serão as palavras chaves usadas pela biblioteca do sikuli em integração com  o robotframework
#essas palavras chaves estão descritas na documentação da biblioteca. 
* Keywords * 
#(o EXECDIR é a variável que traz o diretorio de execução do projeto(o raíz), mas tem que completar o caminho)
Carrega os Elementos do App
    Add Image Path      ${EXECDIR}\\resources\\elements

#chama a keyword que carrega os elementos do app, e manda um evento de click no icone do programa 
Iniciar Sessão
    Carrega os Elementos do App
    Sleep  5
    click         icone-app.png

#chama a keyword "Stop Remote Server", essa keyword vai parar o servidor do sikuli que faz a interação entre o robot e a api do sikuli
Encerrar Sessão
    Stop Remote Server

#gera uma evidencia do teste tirando um print da tela 
Finalizar Teste
    Capture Screen
    #só fecha a aplicação se for passado o nome dela, logo é interessante ver no gerenciador de tarefas, como está o nome do programa
    Close Application   BugBakery