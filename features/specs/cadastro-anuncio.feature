#language: pt

Funcionalidade: Cadastro de Anúncios

    Sendo usuário cadastrado no Rocklov que possui equipamento musicais
    Quero cadastrar meus equipamentos
    Para que eu possa disponibilizá-los para locacao

    Cenário: Novo equipamento

        Dado que eu tenho o seguinte equipamento

            | thumb     | fender-sb.jpg |
            | nome      | Fender Strato |
            | categoria | Cordas        |
            | preco     | 200           |
        Quando submeto o cadastro desse item
        Entao devo ver esse item no meu Dashboard
        
