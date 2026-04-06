require 'rspec'

class OrderPage
    include Capybara::DSL
    include RSpec::Matchers

    def assert_order
        expect(find('h1')).to eql 'Uhull! Pedido confirmado'
        expect(find('p[color=subtitle]')).to have_text 'Agora é só aguardar que logo o café chegará até você'
    end

    def assert_delivery_time(target)
        delivery_time = find('p', text: 'Previsão de entrega')
        expect(delivery_time.find('strong').text).to eql target
    end
end