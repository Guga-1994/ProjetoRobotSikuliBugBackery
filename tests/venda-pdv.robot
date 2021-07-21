* Settings *
Documentation   Suite de teste de venda no PDV(Ponto de Vendas)

Resource    ${EXECDIR}/resources/base.robot


Suite Setup     Iniciar Sessão
Suite Teardown  Encerrar Sessão

* Test Cases *
Vender o melhor combo
   Abrir PDV
   Selecionar o Funcionario     func-fernando
   Adicionar um Item            produto-coxinha     1
   Adicionar um Item            produto-cocacola    1
   Finalizar a Venda
   Deve fechar o pedido com sucesso 

   [Teardown]  Finalizar Teste

