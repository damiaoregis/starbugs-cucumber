#language: pt

Funcionalidade: Pedidos
    Como um usuário do site Starbugs, eu quero selecionar e comprar cafés 
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega.
    @smoke
     Cenário: Iniciar o processo de compra de um café

        Dado que eu estou na página principal da Starbugs
           E que desejo comprar o seguinte produto:
            | name     | Expresso Tradicional |         
            | price    | R$ 9,99              |
            | delivery | R$ 10,00             |
        Quando inicio a compra desse item
        Então devo ver a página de checkout com detalhes do produto
           E o valor total da compra deve ser "R$ 19,99"

     Cenário: Café indisponível

        Dado que eu estou na página principal da Starbugs
           E que desejo comprar o seguinte produto:
            | name     | Expresso Cremoso |
        Quando inicio a compra desse item
        Então devo ver um popup indicando que o produto está indisponível
    Cenário: Compra bem sucedida 

        Dado que eu estou na página principal da Starbugs
           E que iniciei a compra do item "Expresso Tradicional"
        Quando faço a busca do CEP: "04534011"
           E informo os demais dados do endereço:
            | Numero      | 1000   |
            | Complemento | Apto 22| 
        E escolho a forma de pagamento "Cartão de Crédito"
        E por fim finalizo a compra
        Então sou redirecionado para a página de confirmação do pedido
           E deve ser informado um prazo de entrega estimado de "20 min - 60 min" 