#language: pt

Funcionalidade: Catálogo de cafés
    Como um usuário do site, eu quero acessar o catálogo de cafés na página principal
    Para que eu possa escolher e saber mais sobre os produtos disponíveis.

Cenário: Acessar o catálogo de cafés na página principal
    Quando eu acessar a página principal da Starbugs
    Então eu devo ver uma lista de cafés disponíveis

Cenário: Iniciar o processo de compra de um café
    Dado que eu estou na página principal da Starbugs
    E que desejo comprar o seguinte produto:
      | name     | Expresso Gelado |         
      | price    | R$ 9,99         |
      | delivery | R$ 10,00        |
    Quando inicio a compra desse item
    Então devo ver a página de checkout com detahehes do produto
    E o valor total da compra deve ser "R$ 19,99"

Cenário: Café indisponível
    Dado que eu estou na página principal da Starbugs
     E que desejo comprar o seguinte produto:
      | name     | Expresso Cremoso |
    Quando inicio a compra desse item
    Então devo ver um popup indicando que o produto está indisponível