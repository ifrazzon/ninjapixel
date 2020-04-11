#language:pt

Funcionalidade: Login
    Para que eu possa gerenciar os jogos do meu catálogo NinjaPixel
    Sendo um Administrador de catálogo
    Posso acessar o sistema com meu e-mail e senha

Cenario: Acessar o portal

    Dado que acesso à página principal
    Quando eu submeto minhas credenciais "papito@ninjapixel.com" e "pwd123"
    Então devo ser autenticado

@doing
Cenario: Senha inválida

    Dado que acesso à página principal
    Quando eu submeto minhas credenciais com senha inválida
    Então devo ver uma mensagem de alerta "Usuário e/ou senha inválidos"

Cenario: Email não cadastrado no sistema

    Dado que acesso a pagina principal
    Quando eu submeto minhas credenciais com email não cadastrado
    Então devo ver uma mensagem de alerta "Usuário e/ou senha inválidos"

Cenario: Não informo o email

    Dado que acesso a pagina principal
    Quando eu submeto minhas credenciais sem o email
    Então devo ver uma mensagem de alerta "Opps. Informe o seu email!"

Cenario: Não informo a senha

    Dado que acesso a pagina principal
    Quando eu submeto minhas credenciais sem a senha
    Então devo ver uma mensagem de alerta "Opps. Informe a sua senha!"
