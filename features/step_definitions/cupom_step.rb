Dado('que iniciei o processo de compra do item:') do |table|
    @product = table.rows_hash
    
    @home.open
    @home.buy(@product[:name])
    @expected_total = @product[:total]
end

Quando('aplico o seguinte cupom: {string}') do |coupom_code|
    @checkout.set_discount(coupom_code)
end

Então('o valor total da compra deve ser atualizado para {string}') do |total_price|
    @checkout.assert_total_price(total_price)
end

Então('devo ver a seguinte notificação: {string}') do |notice|
    @checkout.assert_notice(notice)
end

Então('o valor total da compra deve permanecer o mesmo') do
    @checkout.assert_total_price(@expected_total)
end