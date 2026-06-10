            #language: pt

            Funcionalidade: Configurar produto e inserir no carrinho
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Configurar o produto e inserir no carrinho
            Dado que estou na página do produto "Augusta Pullover Jacket"
            Quando eu selecionar o tamanho "M"
            E escolher a cor "Blue"
            E definir a quantidade como "2"
            E clicar em "Adicionar ao Carrinho"
            Então o produto deve ser adicionado ao carrinho com as configurações selecionadas


            Esquema de Cenário: Configurar o produto com diferentes opções e inserir no carrinho
            Dado que estou na página do produto "Augusta Pullover Jacket"
            Quando eu selecionar o tamanho "<tamanho>"
            E escolher a cor "<cor>"
            E definir a quantidade como "<quantidade>"
            E clicar em "Adicionar ao Carrinho"
            Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

            Exemplos:
            | tamanho | cor    | quantidade |
            | XS      | Blue   | 1          |
            | S       | Orange | 1          |
            | M       | Red    | 2          |
            | L       | Blue   | 3          |
            | XL      | Red    | 4          |


            Contexto:
            Dado que estou na página do produto "Augusta Pullover Jacket"
            E o produto tem as seguintes opções de tamanho: "XS", "S", "M", "L", "XL"
            E as seguintes opções de cor: "Blue", "Orange", "Red"

            Cenário: Tentar adicionar produto ao carrinho sem selecionar a cor
            Quando eu selecionar um tamanho válido
            E definir uma quantidade válida
            E tentar adicionar o produto ao carrinho sem selecionar a cor
            Então deve exibir uma mensagem de erro "É necessário selecionar uma cor"

            Cenário: Tentar adicionar produto ao carrinho sem selecionar o tamanho
            Quando eu selecionar uma cor válida
            E definir uma quantidade válida
            E tentar adicionar o produto ao carrinho sem selecionar o tamanho
            Então deve exibir uma mensagem de erro "É necessário selecionar um tamanho"

            Cenário: Tentar adicionar produto ao carrinho sem selecionar a quantidade
            Quando eu selecionar um tamanho válido
            E escolher uma cor válida
            E tentar adicionar o produto ao carrinho sem selecionar a quantidade
            Então deve exibir uma mensagem de erro "É necessário selecionar uma quantidade"

            Cenário: Tentar adicionar mais de 10 unidades do produto ao carrinho
            Quando eu selecionar um tamanho válido
            E escolher uma cor válida
            E tentar adicionar mais de 10 unidades do produto ao carrinho
            Então deve exibir uma mensagem de erro "A quantidade máxima por venda é 10 unidades"

            Cenário: Botão "limpar" volta ao estado original
            Quando eu selecionar um tamanho válido
            E escolher uma cor válida
            E definir uma quantidade válida
            E clicar no botão "Limpar"
            Então as opções de tamanho, cor e quantidade devem voltar para o estado original