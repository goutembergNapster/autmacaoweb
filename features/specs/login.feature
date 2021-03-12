#language: pt

Funcionalidade: Login

             Sendo um usuário cadastrado
Quero acessar o sistema da Rocklov
Para que eu possa anunciar meus equipamentos musicais

        @temp
        Cenario: Login do usuário

            Dado que acesso a página principal
             Quando submeto minhas credenciais com "goutemberg.silva@icloud.com" e "34587895"
             Então sou redirecionado para o Dashboard

        Esquema do Cenário: Tentar logar

            Dado que acesso a página principal
             Quando submeto minhas credenciais com "<email_input>" e "<senha_input>"
             Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos:
                  | email_input                 | senha_input | mensagem_output                  |
                  | goutemberg.silva@icloud.com | 3456789     | Usuário e/ou senha inválidos.    |
                  | goutemberg.silva@loud.com   | 3456789     | Usuário e/ou senha inválidos.    |
                  | goutemberg.silva$loud.com   | 3456789     | Oops. Informe um email válido!   |
                  |                             | 3456789     | Oops. Informe um email válido!   |
                  | goutemberg.silva@icloud.com |             | Oops. Informe sua senha secreta! |



        #Todos os cenarios abaixo para modificados para o esquema de cenarios que consiste em juntar todos os cenarios 
        #comuns em uma unica tabela de cenario. 
        
        #Cenario: Senha incorreta

        #    Dado que acesso a página principal
        #    Quando submeto minhas credenciais com senha incorreta
        #    Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.

        #Cenário: Email não cadastrado

        #    Dado que acesso a página principal
        #    Quando submeto minhas credenciais com email que não existe na Rocklov
        #    Então vejo a mensagem de alerta: Usuário e/ou senha inválidos.

        #Cenario: Email incorreto

        #    Dado que acesso a página principal
        #    Quando submeto minhas credenciais com email incorreto
        #    Então vejo a mensagem de alerta: Oops. Informe um email válido!

        #Cenario: Email não informado

        #    Dado que acesso a página principal
        #    Quando submeto minhas credenciais sem o email
        #    Então vejo a mensagem de alerta: Oops. Informe um email válido!

        #Cenario: Senha não informada

        #    Dado que acesso a página principal
        #    Quando submeto minhas credenciais sem a senha
        #    Então vejo a mensagem de alerta: ops. Informe sua senha secreta!