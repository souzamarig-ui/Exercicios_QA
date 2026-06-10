            # language: pt

            Funcionalidade: Login na plataforma
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos


            Contexto:
            Dado que estou na página de login da EBAC-SHOP

            Cenário: Login com dados válidos
            Quando eu inserir o email "mari123@ebac.com.br", a senha "senha@123!"
            E clicar no botão "Login"
            Então devo ser redirecionado para a página "Checkout"

            Cenário: Login com email inválido
            Quando eu inserir o email "kadknsanda@ebac.com.br", a senha "senha@123!"
            E clicar no botão "Login"
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

            Cenário: Login com senha inválida
            Quando eu inserir o email "mari123@ebac.com.br", a senha "1adsa51"
            E clicar no botão "Login"
            Então devo ver a mensagem de alerta "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar múltiplos usuários
            Quando eu digitar email "<email>" e a senha "<senha>"
            E clicar no botão "Login"
            Então devo ser redirecionado para a página "Checkout"

            Exemplos:
            | email             | senha      |
            | joao@ebac.com.br  | senha@123! |
            | maria@ebac.com.br | senha@123! |
            | pedro@ebac.com.br | senha@123! |
