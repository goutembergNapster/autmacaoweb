#language: pt

Funcionalidade: Cadastro

    Sendo um músico que possui equipamentos musicais
    Quero fazer o meu cadastro no RockLov
    Para que eu possa disponibilizá-los para locação

    @tentativa_cadastro
    Cenario: Fazer cadastro

        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
        |nome      | email                  | senha|
        |Goutemberg| goutemberg@bol.com| acb123|
        Então sou redirecionado para o Dashboard
        
    #todos os cenarios de tentativa foi colocado em um esquema de um unico cenario conforme abaixo
    Esquema do Cenario: Tentativa de cadastro
        
        Dado que acesso a página de cadastro
        Quando submeto o seguinte formulário de cadastro:
        |nome         |email         |senha|
        |<nome_input> |<email_input> |<senha_input>| 
        Então vejo a mensagem de alerta: "<mensagem_output>"

        Exemplos: 

        |nome_input        |email_input          |senha_input    |mensagem_output                 |
        |                  |goutemberg@icloud.com|12345          |Oops. Informe seu nome completo!|
        |goutemberg Pessoa |                     |12345          |Oops. Informe um email válido!  |
        |goutemberg Pessoa |goutemberg%icloud.com|12345          |Oops. Informe seu nome completo!|
        |goutemberg Pessoa |goutemberg%icloud.com|               |Oops. Informe sua senha secreta!|
    
    #@tentativa_cadastro
    #Cenario: Submeter cadastro sem o nome

    #    Dado que acesso a página de cadastro
    #    Quando submeto o seguinte formulário de cadastro:
    #    |nome      | email                 | senha|
    #    |          | goutemberg@icl9oudd.com| acb123|
    #    Então vejo a mensagem de alerta: "Oops. Informe seu nome completo!"

    #@tentativa_cadastro
    #Cenario: Submeter cadastro sem o email

    #    Dado que acesso a página de cadastro
    #    Quando submeto o seguinte formulário de cadastro:
    #     |nome      | email                | senha|
    #     |Goutemberg|                      | acb123|
    #    Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    #@tentativa_cadastro
    #Cenario: Submeter cadastro com email incorreto

    #    Dado que acesso a página de cadastro
    #    Quando submeto o seguinte formulário de cadastro:
    #     |nome      | email                | senha|
    #     |Goutemberg| goutemberg@icloudd.  | acb123|
    #    Então vejo a mensagem de alerta: "Oops. Informe um email válido!"

    #@tentativa_cadastro
    #Cenario: Submeter cadastro sem a senha

    #    Dado que acesso a página de cadastro
    #    Quando submeto o seguinte formulário de cadastro:
    #      |nome      | email                 | senha|
    #      |Goutemberg| goutemberg@icloudd.com|      |
    #    Então vejo a mensagem de alerta: "Oops. Informe sua senha secreta!"
