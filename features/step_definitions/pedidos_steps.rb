

Dado('que iniciei a compra do item {string}') do |product_name|
  @home.buy(product_name)
end
  
Quando('faço a busca do seguinte CEP: {string}') do |zipcode|
  @checkout.find_zipcode(zipcode)
end

Quando('informo os demais dados do endereço:') do |table|
  @checkout.fill_address(table.rows_hash)
end

Quando('escolho a forma de pagamento {string}') do |payment_type|
  @checkout.payment_method(payment_type)
end

Quando('por fim finalizo a compra') do
  @checkout.submit
end

Então('sou redirecionado para a página de confirmação de pedidos') do
  pending # Write code here that turns the phrase above into concrete actions
end

Então('deve ser informado um prazo de entrega entre {int} a {int} minutos') do |int, int2|
# Então('deve ser informado um prazo de entrega entre {int} a {float} minutos') do |int, float|
# Então('deve ser informado um prazo de entrega entre {float} a {int} minutos') do |float, int|
# Então('deve ser informado um prazo de entrega entre {float} a {float} minutos') do |float, float2|
  pending # Write code here that turns the phrase above into concrete actions
end
  