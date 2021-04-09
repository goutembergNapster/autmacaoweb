Dado('que eu estou logado como {string} e {string}') do |string, string2|
    
end
  
  Dado('que acesso o formulario de cadastro de anúncios') do
    
end

Dado('que eu tenho o seguinte equipamento:') do |table|
    anuncio = table.rows_hash
    log anuncio
end
  
Quando('submeto o cadastro desse item') do
    find("input[placeholder$=equipamento]").set anuncio[:nome]
    find("#category").find('option', text: anuncio[:categoria]).select_option
    find("input[placeholder^=Valor]").set anuncio[:preco]

    click_button "Cadastrar"

    sleep 10 #temporario
   
end
  
Entao('devo ver esse item no meu Dashboard') do
    
end