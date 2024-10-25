
require_relative './pages/home.rb'
require_relative './pages/checkout.rb'
require_relative './pages/order.rb'
require_relative './pages/components.rb'

# Configura os objetos de página antes de cada teste
Before do
    @home = HomePage.new
    @checkout = CheckoutPage.new
    @order = OrderPage.new
    @popup = Popup.new
end



# Gera screenshot para todos os testes:

After do |scenario|
        screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
        attach(screenshot, "image/png", "Screenshot")
end


# Gera screenshot apenas quando algum cenário falhar:

# After do |scenario|
#      if (scenario.failed?)
#          screenshot = page.save_screenshot("logs/screenshots/#{scenario.__id__}.png")
#          attach(screenshot, "image/png", "Screenshot")
#      end
# end