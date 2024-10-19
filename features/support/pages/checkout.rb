require 'rspec'

class CheckoutPage
    include Capybara::DSL
    include RSpec::Matchers

    # Verifica se os detalhes do produto estão corretos
    def assert_product_details(product)
        product_title = find('.item-details h1')
        expect(product_title.text).to eql product[:name]

        sub_price = find('.subtotal .sub-price')
        expect(sub_price.text).to eql product[:price]

        delivery = find('.delivery-price')
        expect(delivery.text).to eql product[:delivery]
    end

    # Verifica se o preço total está correto
    def assert_total_price(total_price)
        price = find('.total-price')
        expect(price.text).to eql total_price
    end

    # Encontra e busca o CEP
    def find_zipcode(zipcode)
        find('input[name=cep]').set(zipcode)
        click_on 'Buscar CEP'
    end

    # Preenche o endereço
    def fill_address(address)
        find('input[name=number]').set(address[:number])
        find('input[name=complement]').set(address[:details])
    end

    # Seleciona o método de pagamento
    def payment_method(payment_type)
        find('label div', text: payment_type.upcase).click
    end
    
    # Submete o pedido
    def submit
        click_on 'Confirmar pedido'
    end
    
end