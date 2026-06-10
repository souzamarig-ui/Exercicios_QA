            # language: pt

            Funcionalidade: Configurar produto e inserir no carrinho
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho


            Esquema de Cenário: Configurar o produto com diferentes opções e inserir no carrinho
            Dado que estou na página do produto "Augusta Pullover Jacket"
            Quando eu selecionar o tamanho "<tamanho>", a cor "<cor>" e a quantidade "<quantidade>"
            E clicar em "Adicionar ao Carrinho"
            Então o produto deve ser adicionado ao carrinho com as configurações selecionadas

            Exemplos:
            | tamanho | cor    | quantidade |
            | XS      | Blue   | 1          |
            | S       | Orange | 1          |
            | M       | Red    | 2          |
            | L       | Blue   | 3          |
            | XL      | Red    | 4          |


            Esquema de Cenário: Validar mensagens ao tentar adicionar produto ao carrinho sem opções obrigatórias ou quantidade inválida
            Dado que estou na página do produto "Augusta Pullover Jacket"
            Quando eu selecionar o tamanho "<tamanho>", a cor "<cor>" e a quantidade "<quantidade>"
            E clicar em "Adicionar ao Carrinho"
            Então deve exibir a mensagem "<mensagem>"

            Exemplos:
            | tamanho | cor  | quantidade | mensagem                                    |
            | S       |      | 1          | É necessário selecionar uma cor             |
            |         | Red  | 2          | É necessário selecionar um tamanho          |
            | L       | Blue |            | É necessário selecionar uma quantidade      |
            | XL      | Red  | 12         | A quantidade máxima por venda é 10 unidades |

            Cenário: Botão "limpar" volta ao estado original
            Dado que estou na página do produto "Augusta Pullover Jacket"
            Quando eu selecionar um tamanho, uma cor e uma quantidade válidos
            E clicar no botão "Limpar"
            Então as opções de tamanho, cor e quantidade devem voltar para o estado originalvoltar para o estado original
