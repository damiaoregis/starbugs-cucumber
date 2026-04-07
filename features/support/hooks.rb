

require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/order.rb'
require_relative './pages/components.rb'

Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @order = OrderPage.new
    @popup = Popup.new
end

After do |scenario|
    if scenario.failed?
        screenshot = "logs/screenshots/screenshot-#{Time.now.strftime('%Y%m%d-%H%M%S')}.png"
        page.save_screenshot(screenshot)
        attach(screenshot, 'image/png')
     end
 end
 
    
        