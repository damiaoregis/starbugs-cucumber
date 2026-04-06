#language: pt

Funcionalidade: Pedidos
    Como um usuário do site Starbugs, eu quero selecionar e comprar cafés 
    Para que eu possa receber os produtos em meu endereço e efetuar o pagamento na entrega.
    @temp
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
           E deve ser informado um prazo de entrega estimado de "20 min - 30 min" 