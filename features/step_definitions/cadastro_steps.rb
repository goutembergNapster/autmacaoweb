require 'mongo'

Dado('que acesso a página de cadastro') do
  visit "/signup"
end

Quando('submeto o seguinte formulário de cadastro:') do |table|

  log table.hashes
   
  user = table.hashes.first

  log user
    
  #mongoDB.new.romove_user(user[:email])

    find("#fullName").set user[:nome]
    find("#email").set user[:email]
    find("#password").set user[:senha]

    click_button "Cadastrar"
     
  
  
end
  