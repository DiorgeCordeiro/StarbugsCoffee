

class HomePage
    include Capybara::DSL

    # Abre a página inicial do site
    def open
        visit 'https://starbugs-qa.vercel.app/'
    end

    # Retorna a lista de itens de café disponíveis
    def coffee_list
        return all('.coffee-item')
    end

    # Compra um café específico pelo nome
    def buy(coffee_name)
        product = find('.coffee-item', text: coffee_name)
        product.find('.buy-coffee').click
    end

end