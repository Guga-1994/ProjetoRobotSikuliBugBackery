* Settings *
Documentation   Ações de venda no PDV

* Keywords *
Abrir PDV
    Sleep  5
    click   menu-vendas.png

Selecionar o Funcionario
    [Arguments]     ${funcionario}
    Sleep  5
    Press Special Key   F1
    Sleep  5
    Double Click    ${funcionario}.png

Adicionar um Item
    [Arguments]     ${produto}  ${quantidade}
    
    Sleep   3
    Press Special Key  F3
    Sleep   3
    Double Click   ${produto}.png
    Sleep   3
    Input Text      campo-quantidade.png    ${quantidade}
    Sleep   3
    Press Special Key  ENTER
    Sleep   3

Finalizar a Venda 
    Press Special Key   F6

Deve fechar o pedido com sucesso 
    Exists     msgbox-pedido-sucesso.png