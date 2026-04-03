Quando('eu acessar a página principal da Starbugs') do
  visit 'https://starbugs-qa.vercel.app/'
end

Então('eu devo ver uma lista de cafés disponíveis') do
  products = all('.coffee-item')
  expect(products.size).to be > 0
end

Dado('que eu estou na página principal da Starbugs') do
  visit 'https://starbugs-qa.vercel.app/'
end

Dado('que desejo comprar o seguinte produto:') do |table|
  @product_name = table.rows_hash[:product]
  @product_price = table.rows_hash[:price]
  @delivery_price = table.rows_hash[:delivery]   
end

Quando('inicio a compra desse item') do
   product = find('.coffee-item', text: @product_name)
   product.find('.buy-coffee').click
end

Então('devo ver a página de checkout com detahehes do produto') do
  product_title = find('.item-details h1')
  expect(product_title.text).to eql @product_name

  subprice = find('.subtotal .sub-price')
  expect(subprice.text).to eql @product_price

  delivery = find('.delivery-price')
  expect(delivery.text).to eql @delivery_price
end

Então('o valor total da compra deve ser {string}') do |total_price|
  total = find('.total-price')
  expect(total.text).to eql total_price
end

Então('devo ver um popup indicando que o produto está indisponível') do
  popup = find('.swal2-html-container')
  expect(popup.text).to eql 'Produto indisponível'
end
