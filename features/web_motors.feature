#language: pt

@filtro
Funcionalidade: Filtrar carros
    
    Para que eu possa realizar uma busca de carro
    Sendo um usuario que escolheu um tipo de filtro
    Posso ver o resultado do filtro

    Contexto: Realizar uma busca de carros
        
        Dado que eu faça uma busca por carros
        
    @marcas
    Esquema do Cenario: Filtrar por marcas
       
        Quando eu filtro pela <marca> do carro
        Então eu tenho que ver a <mensagem>
         
         Exemplos:
            | marca        | mensagem               |
            | "HONDA"      | "Honda Novos e Usados" |
        
    @modelo
    Esquema do Cenario: Filtrar por modelo
        
        Quando eu filtro pela <marca> do carro
        E escolho o <modelo>
        Então eu tenho que ver a <mensagem>

        Exemplos:
            | marca    | modelo | mensagem                          |
            | "HONDA"  | "CITY" | "Honda City Novos e Usados"       |

    @versao
    Esquema do Cenario: Filtrar por versões

        Quando eu filtro pela <marca> do carro
        E escolho o <modelo>
        E seleciono a <versao>
        Então eu tenho que ver a <mensagem>

        Exemplos:
            | marca    | modelo | versao                          | mensagem                                                        | 
            | "HONDA"  | "CITY" | "1.5 DX 16V FLEX 4P AUTOMÁTICO" | "Honda City 1.5 Dx 16v Flex 4p Automático Novos e Usados"       |
