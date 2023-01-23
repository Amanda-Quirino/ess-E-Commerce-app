Scenario: Clicar em um item disponível no histórico
Given Eu estou logada no sistema como cliente com o login “aqrs” e senha “1234”
And Estou vendo o histórico de pedidos da minha conta
And Estou vendo o produto “Camisa verde” no histórico
And Vejo que esse produto ainda está em estoque no sistema
When Eu seleciono o produto “Camisa verde”
Then Eu vejo a página desse produto

Scenario: Clicar em comprar novamente em uma compra com todos os itens disponíveis
Given Eu estou logada no sistema como cliente com o login “aqrs” e senha “1234”
And Estou vendo o histórico de pedidos da minha conta
And Vejo uma compra com os itens “Camisa verde” e “Calça roxa”
And Vejo que ambos os itens dessa compra estão em estoque no sistema
When Eu seleciono “comprar novamente”
Then Eu vejo uma mensagem confirmando que todos os itens estão no carrinho
And Eu vejo que os itens “Camisa verde” e “Calça roxa” estão no carrinho de compras

Scenario: Selecionar ver histórico de compras
Given Eu estou logada no sistema  como cliente com o login “aqrs” e senha “1234”
And Eu estou na página inicial do sistema
When Eu seleciono “Ver histórico de pedidos”
Then Eu vejo o histórico de compras com todas as compras associadas a minha conta
And Eu vejo o valor desses pedidos
And Eu vejo a data em que foram comprados
And Eu vejo o status deles
And Eu vejo a opção de comprar novamente
And Eu vejo se esses itens estão disponíveis no sistema

Scenario: Filtrando o histórico de compras para ver apenas as compras de março de 2022
Given Eu estou logada no sistema como cliente com o login “aqrs” e senha “1234”
And Estou vendo o histórico de pedidos da minha conta
And Vejo o filtro do histórico de compras
When Eu seleciono “2022” no filtro
And Seleciono “março” no filtro
Then Eu vejo todas as compras que foram feitas no mês de março do ano de 2022

Scenario: Clicar em comprar novamente em uma compra com algum item indisponível
Given Eu estou logada no sistema como cliente com o login “aqrs” e senha “1234”
And Estou vendo o histórico de pedidos da minha conta
And Vejo uma compra com os itens “Camisa verde” e “Calça roxa”
And Vejo que o item “Camisa verde” ainda está em estoque no sistema
And Vejo que o item “Calça roxa” não está em estoque no sistema
When Eu seleciono “comprar novamente”
Then Eu vejo uma mensagem dizendo que o item “Calça roxa” está indisponível
And Vejo que o item “Camisa verde” está no carrinho de compras