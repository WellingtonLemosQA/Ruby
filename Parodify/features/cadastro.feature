#language: pt

Funcionalidade: Cadastro de Usuários
    Sendo um visitante do site Parodify
    Quero fazer o meu cadastro
    Para que eu possa ouvir minhas músicas favoritas

    @happy
    Cenario: Cadastro
        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | fernando@yahoo.com |
            | senha          | pwd123             |
            | senha_confirma | pwd123             |
        Então devo ser redirecionado para a área logada

    Esquema do Cenario: Tentativa de cadastro 3.0

        Dado que acesso a página de cadastro
        Quando submeto o meu cadastro com:
            | email          | <email>          |
            | senha          | <senha>          |
            | senha_confirma | <confirma_senha> |
        Então devo ver a mensagem "<mensagem_saida>"

        Exemplos:
            | email                | senha  | confirma_senha | mensagem_saida                       |
            |                      | pwd123 | pwd123         | Oops! Informe seu email.             |
            | fernando@hotmail.com |        |                | Oops! Informe sua senha.             |
            | fernando@hotmail.com | pwd123 | pwd321         | Oops! Senhas não são iguais.         |
            |                      |        |                | Oops! Informe seu email e sua senha. |

    Cenario: Validação do campo email
        Quando acesso a pagina de cadastro
        Entao deve exibir o seguinte css "input[type=email]"

#Cenario: Email não informado 2.0
#    Dado que acesso a página de cadastro
#    Quando submeto o meu cadastro com:
#        | email          |                    |
#        | senha          | pwd123             |
#        | senha_confirma | pwd123             |
#    Então devo ver a mensagem "Oops! Informe seu email."

#Cenario: Email não informado 1.0
#    Dado que acesso a página de cadastro
#    Quando submeto o meu cadastro sem o email
#    Então devo ver Oops! Informe seu email

#Cenario: Senha não informada 2.0
#    Dado que acesso a página de cadastro
#    Quando submeto o meu cadastro com:
#        | email          | fernando@yahoo.com |
#        | senha          |                    |
#        | senha_confirma |                    |
#    Então devo ver a mensagem "Oops! Informe sua senha."

#Cenario: Senha não informada 1.0
#    Dado que acesso a página de cadastro
#    Quando submeto o meu cadastro sem a senha
#    Então devo ver Oops! Informe sua senha

#Cenario: Senha divergente 2.0
#    Dado que acesso a página de cadastro
#    Quando submeto o meu cadastro com:
#        | email          | fernando@yahoo.com |
#        | senha          | pwd321             |
#        | senha_confirma | pwd123             |
#    Então devo ver a mensagem "Oops! Senhas não são iguais."

#Cenario: Senha divergente 1.0
#    Dado que acesso a página de cadastro
#    Quando submeto meu cadastro com senha divergente
#    Então devo ver Opps! Senhas não são iguais

#Cenario: Nenhum campo preenchido 2.0
#    Dado que acesso a página de cadastro
#    Quando submeto o meu cadastro com:
#        | email          |                    |
#        | senha          |                    |
#        | senha_confirma |                    |
#    Então devo ver a mensagem "Opps! Informe seu email e sua senha"

#Cenario: Nenhum campo preenchido 1.0
#    Dado que acesso a página de cadastro
#    Quando submeto meu cadastro sem preencher os campos
#    Então devo ver Opps! Informe seu email e sua senha
