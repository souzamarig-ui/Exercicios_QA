#language: pt

Funcionalidade: Checkout
Como cliente da EBAC-SHOP
Quero concluir meu cadastro
Para finalizar minha compra

Contexto:
Dado que estou na página de checkout

Cenário: Cadastro com dados válidos
Quando eu preencher os campos obrigatórios com dados válidos
E clicar no botão "Finalizar Compra"
Então deve ser exibida a mensagem de confirmação "Compra finalizada com sucesso!"

Cenário: Cadastro com e-mail inválido
Quando eu preencher o campo de e-mail com um formato inválido
E preencher os outros campos obrigatórios com dados válidos
E clicar no botão "Finalizar Compra"
Então deve ser exibida a mensagem de erro "Por favor, insira um e-mail válido"

Cenário: Cadastro com campos vazios
Quando eu deixar algum dos campos obrigatórios vazios
E clicar no botão "Finalizar Compra"
Então deve ser exibida a mensagem de alerta "Por favor, preencha todos os campos obrigatórios"

