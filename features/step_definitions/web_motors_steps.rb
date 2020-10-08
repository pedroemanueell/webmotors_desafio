Dado("que eu faça uma busca por carros") do
    
    home = Home_page.new
    home.load
    find('.Button--red-home').click
end
 
Quando("eu filtro pela {string} do carro") do |marca|
    filtro_marca = WebMotors_page.new
    filtro_marca.marca_filtro(marca)
    
end
 
Então("eu tenho que ver a {string}") do |mensagem|
    filtro_resultado = expect(page).to have_content mensagem
    puts filtro_resultado
end
  
Quando("escolho o {string}") do |modelo|
    filtro_modelo = WebMotors_page.new
    filtro_modelo.modelo_filtro(modelo)
end
  
Quando("seleciono a {string}") do |versao|
    filtro_versao = WebMotors_page.new
    filtro_versao.versao_filtro(versao)
end
  
# ESTOQUE

Dado("que eu acesso a loja") do
    visit 'https://www.webmotors.com.br/carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concession%C3%A1ria%7Cloja'
end
  
Quando("eu filtro por lista") do
    loja = Loja_page.new
    loja.accesando_lista
end
  
Então("eu vejo quantos carros tem na loja") do
    
    estoque = find('.FoundCars--grid')
    expect(estoque).to have_content '127carros encontrados'
    puts estoque.text
end