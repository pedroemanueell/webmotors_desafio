#language: pt


Funcionalidade: Listagem do estoque
    
    Para que eu possa comprar
    Sendo um usuario que deseja realizar uma compra na loja
    Posso ver o estoque da loja

    @estoque
    Cenario: Listando o estoque

        Dado que eu acesso a loja
        Quando eu filtro por lista
        Então eu vejo quantos carros tem na loja