Dado("que acesso à página principal") do
    visit "http://pixel-web:3000/login"
    page.current_window.resize_to(1440, 900)
end

Quando("eu submeto minhas credenciais {string} e {string}") do |email, password|
    # O hastag é para buscar um elemento pelo ID (Inspecione o elemento para ver)
    find("#emailId").set email
    find("input[name=password]").set password
    click_button "Entrar"
end

Então("devo ser autenticado") do
    logged_user = find(".user .info span").text
    expect(logged_user).to eql "Papito"
end

#Desafio do Ninja

# 1 Replay da Live 2
# Automatizar o cenário de Senha inválida

Quando("eu submeto minhas credenciais com senha inválida") do
    find("#emailId").set 'papito@ninjapixel.com'
    find("input[name=password]").set 'pdw1234'
    click_button "Entrar"
end

Então("devo ver uma mensagem de alerta {string}") do |message|
    msg = find(".alert-dismissible  span").text
    expect(msg).to eql message
end