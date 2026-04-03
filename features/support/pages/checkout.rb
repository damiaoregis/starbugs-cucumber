require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    def assert_product_details(product)
      product_title = find('.item-details h1')
      expect(product_title.text).to eql product[:name]
      
      subprice = find('.subtotal .sub-price')
      expect(subprice.text).to eql product[:price]

      delivery = find('.delivery-price')
      expect(delivery.text).to eql product[:delivery]
    end
   
     def assert_total_price(total_price)
      total = find('.total-price')
      expect(total.text).to eql total_price
    end
end
