#language: pt

Funcionalidade: Cupons
    Como um usuário do site Starbugs, eu quero poder aplicar cupons de desconto na página de checkout 
    Para que eu possa obter reduções no preço de produtos, aumentando a satisfação com minha experiência de compra.
      
    Contexto:    
        Dado que iniciei o processo de compra do item:
            | name     | Café com Leite |         
            | price    | R$ 19,99       |
            | delivery | R$ 10,00       | 
            | total    | R$ 29,99       |

    Cenário: Aplicar desconto de 20% 

        Quando aplico o seguinte cupom: "MEUCAFE"
        Então o valor total da compra deve ser atualizado para "R$ 25,99"

    Esquema do Cenário: Tentativa de aplicar cupons 
  
        Quando aplico o seguinte cupom: "<coupom>"
        Então devo ver a seguinte notificação: "<saida>"
            E o valor total da compra deve permanecer o mesmo

        Exemplos:
            | coupom    | saida            |    
            | PROMO100  | Cupom inválido!  |
            | PROMO20   | Cupom expirado!  |